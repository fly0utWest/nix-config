{
  programs.git = {
    enable = true;
    userName  = "Nikita Ablamskiy";
    userEmail = "shealtov@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
