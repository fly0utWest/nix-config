{ pkgs, ... }: 
{
  services.xserver = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3status
        i3lock
        i3block
      ];
    };

    layout = "us";
    xkbVariant = "";

    libinput = {
      enable = true;
      mouse.accelProfile = "flat";

      touchpad = {
        accelProfile = "flat";
        scrollMethod = "twofinger";
        naturalScrolling = true;
        tapping = true;
      };
    };

    videoDrivers = [ "amdgpu" ];
    deviceSection = ''Option "TearFree" "True"'';
    displayManager.gdm.enable = true;
  };
}
