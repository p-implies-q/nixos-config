{ config, pkgs, ... }:

{
  imports = [ ../system/xserver.nix
                ];


  environment.systemPackages = with pkgs; [
    snes9x-gtk
  ];
}
