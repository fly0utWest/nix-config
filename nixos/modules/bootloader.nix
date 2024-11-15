{ pkgs, ... }: {

  boot = {
    kernelPackages = pkgs.linuxPackages_zen;

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
    };
  };

}
