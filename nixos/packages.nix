{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    audacity
    librewolf
    chromium
    telegram-desktop
    alacritty
    kitty
    obs-studio
    rofi
    mpv
    vesktop
    gparted
    zoom-us
    pcmanfm-qt
    vscode
    spotify
    qbittorrent

    # Coding stuff
    gnumake
    gcc
    nodejs
    python
    (python3.withPackages (ps: with ps; [ requests ]))
    jdk

    # CLI utils
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    scrot
    ffmpeg
    lux
    mediainfo
    ranger
    cava
    zip
    ntfs3g
    brightnessctl
    openssl
    bluez
    bluez-tools
    openvpn

    # GUI utils
    feh
    imv
    dmenu
    screenkey
    mako
    gromit-mpx
    networkmanagerapplet
    blueman
    pavucontrol

    # Xorg stuff
    #xterm
    #xclip
    xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    waybar
    lxqt.lxqt-policykit

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Screenshotting
    grim
    grimblast
    slurp
    flameshot
    swappy

    # Other
    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    vim
    firebase-tools
    docker-compose
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
