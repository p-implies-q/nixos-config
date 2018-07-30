{ config, lib, pkgs, ... }:
# This file describes the brick specific setup, symlink this to
# 'configuration.nix' in /etc/nixos

{
  imports = [
    ./config/medium.nix

    ./config/services/syncthing.nix
    ./config/services/offlineimap.nix
    ./config/services/docker.nix


  ];

  # Select the Linux version
  boot.kernelPackages = pkgs.linuxPackages;


  # Set the hostname
  networking.hostName = "herbert";
}
