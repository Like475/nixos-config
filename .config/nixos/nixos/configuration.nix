{ config, lib, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
	./modules/bundle.nix
    ]; 

    nix.settings.experimental-features = ["nix-command" "flakes"];
    system.stateVersion = "23.11";
}
