{ pkgs, lib, ... }: {
  environment.variables = {
    EDITOR = "vim";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    BROWSER = "firefox-developer-edition";
    GSETTINGS_BACKEND = "dconf";
  };
}
