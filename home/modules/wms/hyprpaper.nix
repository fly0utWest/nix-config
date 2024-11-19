{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;

      preload = [ "~/nix/img/fsp.jpg" ];

      wallpaper = [ ", ~/nix/img/fsp.jpg" ];
    };
  };
}
