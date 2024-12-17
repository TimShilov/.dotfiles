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

## Detailed Setup Instructions

1. **Install Nix**:
   Follow the instructions on the [Nix website](https://nixos.org/download.html) to install Nix.

2. **Install Nix-Darwin**:
   Follow the instructions on the [Nix-Darwin GitHub page](https://github.com/LnL7/nix-darwin) to install Nix-Darwin.

3. **Install Home Manager**:
   Follow the instructions on the [Home Manager GitHub page](https://github.com/nix-community/home-manager) to install Home Manager.

4. **Clone the Repository**:
   ```shell
   git clone https://github.com/TimShilov/.dotfiles.git ~/dotfiles
   ```

5. **Apply the Configuration**:
   ```shell
   cd ~/dotfiles
   darwin-rebuild switch --flake .#client-Tim-Shilov
   ```

6. **Install Brew and Brewfile**:
   Follow the instructions on the [Homebrew website](https://brew.sh/) to install Homebrew. Then, run the following commands to install the packages listed in the Brewfile:
   ```shell
   brew bundle
   ```

7. **Update Brewfile**:
   If you make changes to the installed packages, you can update the Brewfile with the following command:
   ```shell
   brew bundle dump
   ```

8. **Cleanup Brewfile**:
   To remove packages that are not listed in the Brewfile, run the following command:
   ```shell
   brew bundle cleanup
   ```

9. **Additional Configuration**:
   You may need to perform additional configuration steps depending on your specific setup. Refer to the documentation for each tool and package for more information.
