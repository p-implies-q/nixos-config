{ config, lib, pkgs, ... }:
# This file describes the brick specific setup, symlink this to
# 'configuration.nix' in /etc/nixos

{
  imports = [
    ../config/medium.nix
    ../config/system/laptop.nix

    ../config/services/redshift.nix
    ../config/services/docker.nix
    ../config/services/syncthing.nix  

    ../config/apps/snes.nix
    ../config/apps/office.nix
   
    ../config/dev/keyboard.nix
    ../config/dev/python.nix
  ];

  # Select the Linux version
  boot.kernelPackages = pkgs.linuxPackages;
  
  system.stateVersion = "18.03";

  # Set the hostname
  networking.hostName = "brick";
}
