{ pkgs, ... }: {
    wayland.windowManager.hyprland = {
        enable = true;
        xwayland.enable = true;
        systemd.enable = true;

        settings = {
            source = [
                "./hyprland/mocha.conf"
            ];

            monitor = [
                "DP-1, disable"
                "DVI-D-1, 1920x1080, 0x0, 1"
            ];

            exec-once = [
                "mako & waybar"
                "wpaperd -d"
            ];

            env = [
                "XCURSOR_SIZE, 24"
                "XCURSOR_THEME, Catppuccin-Mocha-Dark-Cursors"
                "GTK_THEME, Catppuccin-Mocha-Standard-Lavender-dark:dark"
                "QT_QPA_PLATFORM, wayland"
            ];

            input = {
                kb_layout = "us, ru";
                kb_options = "grp:win_space_toggle";

                follow_mouse = 1;
            };

            general = {
                gaps_in = 3;
                gaps_out = 6;
                border_size = 2;
                "col.active_border" = "$lavender $blue 45deg";
                "col.inactive_border" = "$overlay1 $overlay0 45deg";

                layout = "dwindle";

                allow_tearing = false;
            };

            decoration = {
                rounding = 6;
                
                blur = {
                    enabled = true;
                    size = 16;
                    passes = 2;
                    new_optimizations = true;
                };

                drop_shadow = true;
                shadow_range = 4;
                shadow_render_power = 3;
                "col.shadow" = "$crust";
            };

            animations = {
                enabled = true;

                bezier = [
                    "myBezier, 0.05, 0.9, 0.1, 1.05"
                ];

                animation = [
                    "windows, 1, 7, myBezier"
                    "windowsOut, 1, 7, default, popin 80%"
                    "border, 1, 10, default"
                    "borderangle, 1, 8, default"
                    "fade, 1, 7, default"
                    "workspaces, 1, 6, default"
                ];
            };

            dwindle = {
                pseudotile = true;
                preserve_split = true;
            };

            misc = {
                disable_hyprland_logo = true;
                disable_splash_rendering = true;
                force_default_wallpaper = 0;
            };

            "$mainMod" = "SUPER";

            bind = [
                "$mainMod, Q, exec, alacritty"
                "$mainMod, C, killactive,"
                "$mainMod, M, exit,"
                "$mainMod, E, exec, dolphin"
                "$mainMod, V, togglefloating,"
                "$mainMod, R, exec, wofi --conf ~/.config/wofi/config/config --style ~/.config/wofi/src/mocha/style.css --show drun"
                "$mainMod, P, pseudo,"
                "$mainMod, J, togglesplit,"

                "$mainMod, left, movefocus, l"
                "$mainMod, right, movefocus, r"
                "$mainMod, up, movefocus, u"
                "$mainMod, down, movefocus, d"

                "$mainMod SHIFT, left, swapwindow, l"
                "$mainMod SHIFT, right, swapwindow, r"
                "$mainMod SHIFT, down, swapwindow, u"
                "$mainMod SHIFT, up, swapwindow, d"

                "$mainMod CTRL, left, resizeactive, -40 0"
                "$mainMod CTRL, right, resizeactive, 40 0"
                "$mainMod CTRL, up, resizeactive, 0 -40"
                "$mainMod CTRL, down, resizeactive, 0 40"

                "$mainMod, 1, workspace, 1"
                "$mainMod, 2, workspace, 2"
                "$mainMod, 3, workspace, 3"
                "$mainMod, 4, workspace, 4"
                "$mainMod, 5, workspace, 5"
                "$mainMod, 6, workspace, 6"
                "$mainMod, 7, workspace, 7"
                "$mainMod, 8, workspace, 8"
                "$mainMod, 9, workspace, 9"
                "$mainMod, 0, workspace, 10"

                "$mainMod SHIFT, 1, movetoworkspace, 1"
                "$mainMod SHIFT, 2, movetoworkspace, 2"
                "$mainMod SHIFT, 3, movetoworkspace, 3"
                "$mainMod SHIFT, 4, movetoworkspace, 4"
                "$mainMod SHIFT, 5, movetoworkspace, 5"
                "$mainMod SHIFT, 6, movetoworkspace, 6"
                "$mainMod SHIFT, 7, movetoworkspace, 7"
                "$mainMod SHIFT, 8, movetoworkspace, 8"
                "$mainMod SHIFT, 9, movetoworkspace, 9"
                "$mainMod SHIFT, 0, movetoworkspace, 10"

                "$mainMod, mouse_down, workspace, e+1"
                "$mainMod, mouse_up, workspace, e-1"

                ", Print, exec, grimblast copy area"
                ", XF86AudioLowerVolume, exec, pamixer -d 5"
                ", XF86AudioRaiseVolume, exec, pamixer -i 5"
            ];

            bindm = [
                "$mainMod, mouse:272, movewindow"
                "$mainMod, mouse:273, resizewindow"
            ];
        };
    };
}
