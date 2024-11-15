{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "qbittorrent-4.6.4" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    audacity
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
    nekoray
    keepassxc

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
    wireguard-tools

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
    auto-cpufreq
    docker
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
