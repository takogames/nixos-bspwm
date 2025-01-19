{config, pkgs, ... }:
let
        unstable = import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { config = { allowUnfree = true; };  };
in

 {
	#enable flatpaks
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  xdg.portal.config.common.default = "gtk";
  xdg.portal.enable =true ;
  services.flatpak.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
    packageOverrides = pkgs: with pkgs; {
  };
};

  environment.systemPackages = with pkgs; [
    # Desktop apps  
    audacity
    kitty
    unstable.ghostty
    obs-studio
    kdenlive
    unstable.librewolf # web browser of choice
    tor-browser
    ungoogled-chromium
    geany
    nautilus
    gimp
    vlc
 
    # user packages, for my personal uses
         # moved to modules/Tower.nix

    # Coding stuff
    cargo
    rustc
    go
    gnumake
    lxde.lxsession
    gcc
    nodejs
    python
    (python3.withPackages (ps: with ps; [ requests ]))
    cmake
    pkg-config
    # CLIs & utils
    xorg.setxkbmap
    vim
    speedcrunch
    file
    tree
    wget
    git
    fastfetch
    cowsay
    fortune
    htop
    nix-index
    unzip
    scrot
    xclip
    ffmpeg
    light
    lux
    mediainfo
    ranger
    zram-generator
    cava
    zip
    ntfs3g
    yt-dlp
    brightnessctl
    swww
    openssl
    lazygit
    bluez
    bluez-tools
    kdePackages.qtsvg
    wineWowPackages.stable
    p7zip
    
    # GUI utils
    feh
    imv
    dmenu
    screenkey
    mako
    gromit-mpx
    # stuff
    papirus-icon-theme

    # WMs and stuff
    polybar
    eww
    dmenu
    rofi
    #dunst

    # Sound
    pipewire
    alsa-utils

    # GPU stuff 
    amdvlk
    glib

    # Other

   # home-manager

  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-extra
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    comic-mono
    unstable.notonoto
    maple-mono-NF
    zpix-pixel-font
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}

