{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.fly0utwest = {
      isNormalUser = true;
      description = "fly0utWest";
      extraGroups = [ "networkmanager" "wheel" "input" "docker" ];
      packages = with pkgs; [];
    };
  };
}
