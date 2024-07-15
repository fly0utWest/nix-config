{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;

      preload = [ "~/nix/img/firewatch-nord.png" ];

      wallpaper = [ ", ~/nix/img/firewatch-nord.png" ];
    };
  };
}
