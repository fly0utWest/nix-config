{ pkgs, lib, ... }: {
  environment.variables = {
    EDITOR = "vim";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    BROWSER = "chromium";
    GSETTINGS_BACKEND = "dconf";
  };
}
