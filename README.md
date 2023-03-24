# bash-textutils

Package `siakhooi-textutils` to transform or evaluate text.

## Commands

```bash
cat filename1 | indent 'prefix'
cat filename1 | prefix 'prefix'
cat filename1 | suffix 'suffix'

is-true value
is-false value
```

👉Visit [Screenshots](screenshots/Screenshots.md) of each commands.

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
