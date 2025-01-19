#settings for my pc tower
{config, pkgs, ... }:
let
        unstable = import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { config = { allowUnfree = true; };  };
in {



 users.users.tonii.packages = with pkgs; [
   #prismlauncher
   steam
   plover.dev
   kicad
   discord
   unstable.osu-lazer-bin
   obsidian
   #lmms
  # olive-editor
  # davinci-resolve
   aseprite
   krita
   anki
  # blender
   via
   blugon
   musescore
   unstable.rustlings
   unstable.milkytracker
   qmk
   imhex
   ghidra
   dolphin-emu 
];
   nixpkgs.config.allowUnfree = true;
	programs.steam = {
  	enable = true;
  	remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  	dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  	localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
   };


}
