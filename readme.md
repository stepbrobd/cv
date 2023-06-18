# Curriculum Vitae

![Status](https://github.com/stepbrobd/curriculum-vitae/actions/workflows/release.yml/badge.svg)

CV with [Typst](https://github.com/typst/typst) and [Nix](https://nixos.org).

```shell
curl https://api.github.com/repos/stepbrobd/cv/releases/latest | jq -r ".assets[].browser_download_url"
```

## Build

With Nix:

```shell
nix run github:typst/typst -- compile main.typ cv.pdf
```

## License

The contents inside this repository, excluding all submodules, are licensed under the [MIT License](license.md). 
Third-party file(s) and/or code(s) are subject to their original term(s) and/or license(s).
