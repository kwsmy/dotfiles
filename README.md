# dotfiles

> [!NOTE]  
> This assumes you are using **Windows Subsystem for Linux**.  
> And you need to override *user* in [git-config](./.config/git/config) with your own GitHub account.

## Requirements

### Debian Packages

Use zsh as shell and neovim as text editor.

```sh
sudo apt install -y zsh neovim
```

And install useful tools as fzf and keychain.

```bash
sudo apt install -y fzf keychain
```

Optionally install Japanese manual.

```sh
sudo apt install -y language-pack-ja manpages-ja
```

### Rust Packages

Get [cargo](https://www.rust-lang.org/ja/) and [cargo-binstall](https://github.com/cargo-bins/cargo-binstall) from the official website.

Then install rust packages using cargo-binstall.

```bash
cargo binstall -y mise sheldon starship
```

See each reference for how to use them.

- [mise](https://github.com/jdx/mise)
- [sheldon](https://github.com/rossmacarthur/sheldon)
- [starship](https://github.com/starship/starship)

## Installation

Symbolic links for dotfiles are created with the following command.

```bash
bash ./scripts/install.bash $(git branch --show-current)
```

If you want to remove them, run the following command.

```bash
bash ./scripts/uninstall.bash $(git branch --show-current)
```
