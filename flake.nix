{
  description = "System Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";
  };

  outputs =
    inputs@{ self
    , nix-darwin
    , catppuccin
    , home-manager
    , nixpkgs
    }: {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#client-Tim-Shilov
      darwinConfigurations."client-Tim-Shilov" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./modules/darwin
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit catppuccin; };
              users."tim.shilov". imports = [
                ./modules/home-manager
                catppuccin.homeManagerModules.catppuccin
                ./modules/home-manager/catppuccin.nix
              ];
            };
          }
        ];
      };

      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."client-Tim-Shilov".pkgs;
    };
}


