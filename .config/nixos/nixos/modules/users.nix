{ pkgs, ... }: {
    users.users.like475 = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
    };

    users.defaultUserShell = pkgs.fish;
}
