{ pkgs, config,  ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;

    cursor = {
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
}
