{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [
        neovim
        firefox
        alacritty
        mako
        libnotify
        wofi
        waybar
        telegram-desktop
        htop
        fastfetch
        git
        grimblast
        nodejs
        wl-clipboard
        home-manager
        wpaperd
        catppuccin-cursors.mochaDark
        pamixer
        hyprland
        catppuccin-gtk
        cava
        obs-studio
        discord
    ];

    fonts.packages = with pkgs; [
        noto-fonts
        noto-fonts-color-emoji
        font-awesome
        (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];

    imports = [
        ./steam.nix
        ./fish.nix
    ];
}
