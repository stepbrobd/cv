# Curriculum Vitae

![Status](https://github.com/stepbrobd/curriculum-vitae/actions/workflows/release.yml/badge.svg)

CV with [Typst](https://github.com/typst/typst) and [Nix](https://nixos.org).

```shell
curl https://api.github.com/repos/stepbrobd/curriculum-vitae/releases/latest | jq -r ".assets[].browser_download_url"
```

## Build

With Nix:

```shell
nix run github:typst/typst -- compile main.typ cv.pdf
```

## License

This repository content excluding all submodules is licensed under the [MIT License](license.md), third-party code are subject to their original license.

