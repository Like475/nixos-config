{
    description = "Sys-config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, ... }: {
        nixosConfigurations.like475-nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [ ./nixos/configuration.nix ];
        };

        homeConfigurations.like475 = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages."x86_64-linux";
            modules = [ ./home-manager/home.nix ];
        };
    };
}
