# bash-textutils

Package `siakhooi-textutils` to transform or evaluate text.

## Commands

| Command             | Description                          | Doc                       |
| ------------------- | ------------------------------------ | ------------------------- |
| `prefix` prefixText | prepend each line with `prefixText`  | [📗Doc](docs/prefix.md)   |
| `suffix` suffixText | append each line with `suffixText`   | [📗Doc](docs/suffix.md)   |
| `is-true` value     | Evaluate `value` if is a true value  | [📗Doc](docs/is-true.md)  |
| `is-false` value    | Evaluate `value` if is a false value | [📗Doc](docs/is-false.md) |

## Quick Start

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update

$ sudo apt install siakhooi-textutils
```

## Deployments

- <https://siakhooi.github.io/apt/>
- <https://siakhooi.jfrog.io/ui/packages>
