{ pkgs, lib, ... }: {
  environment.variables = {
    EDITOR = "vim";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    BROWSER = "librewolf";
    GSETTINGS_BACKEND = "dconf";
  };
}
