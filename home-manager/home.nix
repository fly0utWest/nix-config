{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "fly0utwest";
    homeDirectory = "/home/fly0utwest";
    stateVersion = "24.05";
  };
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };
} 
