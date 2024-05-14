{ pkgs, ... }: {
    networking.hostName = "like475-nixos";
    time.timeZone = "Europe/Astrakhan";
    i18n.defaultLocale = "ru_RU.UTF-8";

    console = {
        font = "UniCyr_8x16";
        keyMap = "us";
    };

    xdg.portal = {
        enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-wlr pkgs.xdg-desktop-portal-hyprland ];
        config.common.default = "*";
    };
}
