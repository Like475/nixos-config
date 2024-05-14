{
    programs.alacritty = {
        enable = true;
        settings = {
            import = [ ./alacritty/catppuccin-mocha.toml ];
            shell = "fish";

            window = {
                padding = { x = 6; y = 6; };
                # blur = true;
                opacity = 0.85;
            };
            
            font = {
                normal = { family = "JetBrainsMono NF"; };
                bold = { style = "Bold"; };
                italic = { style = "Italic"; };
            };

            cursor.style = "Beam";
        };
    };
}
