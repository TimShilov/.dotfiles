# My personal dotfiles
This is a collection of my dotfiles.

## Usage

Clone this repository to your home directory (`~/dotfiles`), then run `darwin-rebuild` to apply the configuration.

For example, to apply the configuration, run:

```shell
cd ~/dotfiles
darwin-rebuild switch --flake .#client-Tim-Shilov
```

## Brew usage

```shell
# install everything
brew bundle

# update Brewfile
brew bundle dump

# Remove what's not listed in Brewfile
brew bundle cleanup
```

## Requirements

- [Nix](https://nixos.org/)
- [Nix-Darwin](https://github.com/LnL7/nix-darwin)
- [Home Manager](https://github.com/nix-community/home-manager)
