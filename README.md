# bash-textutils

Package `siakhooi-textutils` to transform or evaluate text.

## Commands

| Command             | Description                          | Doc                       |
| ------------------- | ------------------------------------ | ------------------------- |
| `prefix` prefixText | prepend each line with `prefixText`  | [📗Doc](docs/prefix.md)   |
| `suffix` suffixText | append each line with `suffixText`   | [📗Doc](docs/suffix.md)   |
| `is-true` value     | Evaluate `value` if is a true value  | [📗Doc](docs/is-true.md)  |
| `is-false` value    | Evaluate `value` if is a false value | [📗Doc](docs/is-false.md) |
| `make-table` columns| Print CSV data from stdin into table using `columns` as headers||

## Quick Start

### Ubuntu/Debian

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update

$ sudo apt install siakhooi-textutils
```
### Fedora/Red Hat

```bash
$ sudo curl -L https://siakhooi.github.io/rpms/siakhooi-rpms.repo | sudo tee /etc/yum.repos.d/siakhooi-rpms.repo > /dev/null

$ sudo dnf install siakhooi-textutils
# or
$ sudo yum install siakhooi-textutils
```

## Deployments

- <https://siakhooi.github.io/apt/>

## Badges

![GitHub](https://img.shields.io/github/license/siakhooi/bash-textutils?logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/siakhooi/bash-textutils?logo=github)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/siakhooi/bash-textutils?logo=github)
![GitHub issues](https://img.shields.io/github/issues/siakhooi/bash-textutils?logo=github)
![GitHub closed issues](https://img.shields.io/github/issues-closed/siakhooi/bash-textutils?logo=github)
![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/siakhooi/bash-textutils?logo=github)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/siakhooi/bash-textutils?logo=github)
![GitHub top language](https://img.shields.io/github/languages/top/siakhooi/bash-textutils?logo=github)
![GitHub language count](https://img.shields.io/github/languages/count/siakhooi/bash-textutils?logo=github)
![Lines of code](https://img.shields.io/tokei/lines/github/siakhooi/bash-textutils?logo=github)
![GitHub repo size](https://img.shields.io/github/repo-size/siakhooi/bash-textutils?logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/siakhooi/bash-textutils?logo=github)
![Workflow](https://img.shields.io/badge/Workflow-github-purple)
![workflow](https://github.com/siakhooi/bash-textutils/actions/workflows/workflow-build-with-quality-checks.yml/badge.svg)
![workflow](https://github.com/siakhooi/bash-textutils/actions/workflows/workflow-deployments.yml/badge.svg)
![Release](https://img.shields.io/badge/Release-github-purple)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/siakhooi/bash-textutils?label=GPR%20release&logo=github)
![GitHub all releases](https://img.shields.io/github/downloads/siakhooi/bash-textutils/total?color=33cb56&logo=github)
![GitHub Release Date](https://img.shields.io/github/release-date/siakhooi/bash-textutils?logo=github)

[![Generic badge](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg)](https://www.buymeacoffee.com/siakhooi)
[![Generic badge](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-bash-textutils)
