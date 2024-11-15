{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;

      preload = [ "~/nix/img/glungus.jpg" ];

      wallpaper = [ ", ~/nix/img/glungus.jpg" ];
    };
  };
}
