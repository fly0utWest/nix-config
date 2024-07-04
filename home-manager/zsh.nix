{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

  shellAliases =
    let
      flakeDir = "~/nix";
    in {
      ll = "ls -la";
      se = "sudoedit";
      ff = "fastfetch";
      rebuild-switch = "sudo nixos-rebuild switch --flake ${flakeDir}";
      rebuild-boot = "sudo nixos-rebuild boot --flake ${flakeDir}";
      home-switch = "home-manager switch --flake ${flakeDir}";
    };

  history.size = 10000;
  history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "agnoster";
    };
  };
}
