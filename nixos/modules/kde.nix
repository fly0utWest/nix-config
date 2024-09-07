{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    autoNumlock = true;
  };

  services.xserver.desktopManager.plasma5.enable = true;
   
  services.xserver.enable = true;
}
