{ config, lib, pkgs, ... }:
# This file describes the brick specific setup, symlink this to
# 'configuration.nix' in /etc/nixos

{
  imports = [
    ../config/medium.nix
    ../config/system/laptop.nix

    ../config/services/redshift.nix
    ../config/services/docker.nix
    
    ../config/apps/snes.nix
    ../config/apps/office.nix
    # ../config/dev/jekyll.nix
    # ../config/dev/haskell.nix
    ../config/dev/keyboard.nix
    ../config/dev/python.nix
    # ../config/dev/purescript.nix

    # ../config/apps/factorio.nix
    # ../config/apps/steam.nix
  ];

  # Select the Linux version
  boot.kernelPackages = pkgs.linuxPackages;


  # Set the hostname
  networking.hostName = "brick";
}
