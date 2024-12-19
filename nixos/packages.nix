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
    obs-studio
    kdenlive
    librewolf # web browser of choice
    tor-browser
    ungoogled-chromium
    geany
    dolphin
    gimp
    kanata
    vlc
 
    # user packages, for my personal uses
 

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
    wine
    wine64
    winetricks
    wineasio
    
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
    bspwm
    polybar
    eww
    unstable.picom
    dmenu
    rofi
    #dunst

    # Sound
    pipewire
    alsa-utils

    # GPU stuff 
    amdvlk
    rocm-opencl-icd
    glaxnimate


    # Other

   # home-manager

  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    comic-mono
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

