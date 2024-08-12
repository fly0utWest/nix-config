{ pkgs, lib, ... }: {
  environment.variables = {
    EDITOR = "vim";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    BROWSER = "${lib.getExe pkgs.librewolf}";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_STYLE_OVERRIDE = "kvantum";
    GSETTINGS_BACKEND = "dconf";
  };
}
