{ inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  networking.hostName = "nixos";

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8"; 

  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ]; 
  
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  system.stateVersion = "24.05"; 
}
