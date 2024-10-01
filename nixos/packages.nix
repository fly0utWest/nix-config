{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    audacity
    librewolf
    tor-browser
    chromium
    telegram-desktop
    obs-studio
    vesktop
    vlc
    gparted
    zoom-us
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
    go

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
    keepassxc
    jq
    appimage-run
    tun2socks
    nekoray


    # GUI utils
    screenkey

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # Sound
    pipewire
    pulseaudio
    pamixer

    # Other
    home-manager
    kdePackages.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    kdePackages.qt6ct
    kdePackages.kdeconnect-kde
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
