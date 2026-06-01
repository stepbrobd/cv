# Curriculum Vitae

![Status](https://github.com/stepbrobd/cv/actions/workflows/release.yaml/badge.svg)

Binary Cache:

- Cache: <https://cache.ysun.co>
- Key: `cache.ysun.co-1:WxPYwT5g3kt9XhUhHPpNLZKI9HIOsVVAuqSHpok8Qt4=`

CV with [Typst](https://github.com/typst/typst) and [Nix](https://nixos.org).

```shell
curl https://api.github.com/repos/stepbrobd/cv/releases/latest | jq -r ".assets[].browser_download_url"
```

## Build

With Nix:

```shell
nix build github:stepbrobd/cv
```

## Provenance

Download the latest release (`cv.pdf`), then execute the following command:

```shell
gh attestation --repo stepbrobd/cv verify cv.pdf
```

## License

The contents inside this repository, excluding all submodules, are licensed
under the [MIT License](license.md). Third-party file(s) and/or code(s) are
subject to their original term(s) and/or license(s).
