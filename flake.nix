{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    parts.url = "github:hercules-ci/flake-parts";
    parts.inputs.nixpkgs-lib.follows = "nixpkgs";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs: inputs.parts.lib.mkFlake { inherit inputs; } {
    systems = import inputs.systems;

    perSystem = { pkgs, ... }: {
      packages.default = pkgs.stdenvNoCC.mkDerivation {
        name = "cv";
        version = with inputs; self.shortRev or self.dirtyShortRev;
        src = ./.;
        nativeBuildInputs = [ pkgs.typst ];
        buildPhase = ''
          typst compile main.typ cv.pdf
        '';
        installPhase = ''
          mv cv.pdf $out
        '';
      };

      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          direnv
          git
          hayagriva
          nix-direnv
          typst
          typstfmt
        ];
      };

      formatter = pkgs.writeShellScriptBin "formatter" ''
        set -eoux pipefail
        shopt -s globstar
        ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt .
        ${pkgs.typstfmt}/bin/typstfmt **/*.typ
      '';
    };
  };
}
