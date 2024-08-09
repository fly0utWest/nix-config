{
  services.kanshi = {
    enable = true;
    systemdTarget = "hyprland-session.target";

    settings = [
      {
        profile.name = "undocked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            scale = 1.0;
            status = "enable";
          }
        ];
      }

      {
        profile.name = "docked";
        profile.outputs = [
          {
            criteria = "HDMI-A-1";
            mode = "1920x1080@60Hz";
            position = "1920,0"; 
          }

          {
            criteria = "eDP-1";
            status = "disable";
          }
        ];
       }
     ];
   };
}
