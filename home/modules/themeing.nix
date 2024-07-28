{ pkgs, config,  ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    fonts = {
     monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };

      sizes = {
        terminal = 14;
      };
    };

    image = /home/fly0utwest/nix/img/firewatch-nord.png;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";
  };

  gtk = {
    enable = true;
    
    iconTheme = {
      name = "Adwaita-Dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme=1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme=1;
    };
  };
}
