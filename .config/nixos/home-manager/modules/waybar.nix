{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "0 6 0 6";

        modules-left = ["hyprland/workspaces" "hyprland/language"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "custom/mem" "cpu" "temperature" "tray"];

        "hyprland/workspaces" = {
          disable-scroll = true;
        };

    "hyprland/language" = {
        format-en = "US";
        format-ru = "RU";
	      min-length = 5;
	      tooltip = false;
    }; 

    "clock" = {
        timezone = "Europe/Astrakhan";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format = "{:%a; %d %b, %H:%M}";
    };

    "pulseaudio" = {
        # scroll-step = 1; # %, can be a float
        reverse-scrolling = 1;
        format = "{volume}% {icon} ";
        format-muted = " {format_source}";
        format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = ["" "" ""];
        };
    };

    "custom/mem" = {
        format = "{} ";
        interval = 3;
        exec = "free -h | awk '/Mem:/{printf $3}'";
        tooltip = false;
    };

    "cpu" = {
      interval = 2;
      format = "{usage}% ";
      min-length = 6;
    };

    "temperature" = {
        # thermal-zone = 2;
        # hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
        critical-threshold = 80;
        # format-critical = "{temperatureC}°C {icon}";
        format = "{temperatureC}°C {icon}";
        format-icons = ["" "" "" "" ""];
        tooltip = false;
    };

    tray = {
        icon-size = 16;
        spacing = 0;
    };

      };
    };
  
    style = ./waybar/style.css;
  };
}
