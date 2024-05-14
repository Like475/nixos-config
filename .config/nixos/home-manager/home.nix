{ config, pkgs, ... }: {
    home = {
        username = "like475";
        homeDirectory = "/home/like475";
        stateVersion = "23.11";
        pointerCursor = {
            name = "Catppuccin-Mocha-Dark-Cursors";
            package = pkgs.catppuccin-cursors.mochaDark;
            size = 24;
        };
    };

    imports = [
        ./modules/bundle.nix
    ];
}
