# dotfiles

> [!NOTE]
> This environment is used on **Windows Subsystem for Linux**.

## Requirements

- [build-essential](https://packages.debian.org/ja/buster/build-essential)
- [HackGen](https://github.com/yuru7/HackGen)
- [Homebrew](https://brew.sh/ja/)

## Installation

Clone this repository and move into the directory.

```sh
git clone git@github.com:kwsmy/dotfiles.git
cd dotfiles
```

Install all dependencies listed in the Brewfile.

```sh
brew bundle --file=./Brewfile
```

Make your custom command executable.

```sh
chmod +x ./.local/bin/*
```

Create symbolic links to apply your dotfiles.

```sh
./.local/bin/dot apply -a
```
