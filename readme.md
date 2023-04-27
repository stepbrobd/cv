# Curriculum Vitae

![Build Status](https://github.com/StepBroBD/Curriculum-Vitae/actions/workflows/build.yml/badge.svg)

CV in LaTeX with auto build and release.

## Download

To get the latest release, go to <https://github.com/stepbrobd/curriculum-vitae/releases/latest>.

To get it programmatically:

```shell
$ curl https://api.github.com/repos/stepbrobd/curriculum-vitae/releases/latest | jq -r ".assets[].browser_download_url"
> https://github.com/stepbrobd/curriculum-vitae/releases/download/<tag>/cv.pdf
```

## License

This repository content excluding all submodules is licensed under the [WTFPL License](license.md), third-party code are
subject to their original license.
