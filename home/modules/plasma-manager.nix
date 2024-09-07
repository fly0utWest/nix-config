{
  programs.plasma = {
    enable = true;

    configFile = {
      "kwinrc"."org.kde.kdecoration2"."theme" = "Breeze";
      "kdeglobals"."Icons"."Theme" = "Reversal-dark";
      "kxkbrc"."Layout"."LayoutList" = "us,ru";
      "kxkbrc"."Layout"."Options" = "terminate:ctrl_alt_bksp,grp:caps_toggle";
      "kwinrc"."Desktops"."Number" = 2;

    };
  };
}
