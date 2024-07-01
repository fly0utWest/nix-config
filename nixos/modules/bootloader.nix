{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };
      systemd-boot = {
        enable = true;
      };
    };
    initrd.luks.devices = {
      cryptroot = {
        device = "/dev/disk/by-uuid/ec8d8abe-b4d0-4745-8e6e-e7864004f76d";
        preLVM = true;
      };
    };
  };
}
