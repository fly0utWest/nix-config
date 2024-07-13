{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

  home = {
    username = "fly0utwest";
    homeDirectory = "/home/fly0utwest";
    stateVersion = "24.05";
  };
} 
