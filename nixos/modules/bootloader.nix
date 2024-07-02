{ pkgs, ... }: {

  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [ "psmouse.synaptics_intertouch=0" ]; 

    loader = {
      efi = {
        canTouchEfiVariables = true;
      };
      systemd-boot = {
        enable = true;
      };
    };
    
    initrd = {
      kernelModules = [ "amdgpu" ];

      luks.devices = {
        crypted = {
          device = "/dev/disk/by-uuid/ec8d8abe-b4d0-4745-8e6e-e7864004f76d";
          preLVM = true;
        };
      };
    };
  };

}
