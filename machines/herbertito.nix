{ config, lib, pkgs, ... }:
# This file describes the brick specific setup, symlink this to
# 'configuration.nix' in /etc/nixos
{
  imports = [
    ../config/base-medium.nix
    ../config/media-editing.nix
    ../config/laptop.nix
    ../config/pili-support.nix
    ../config/xfce.nix
    ../config/mate.nix
    ../config/xmonad.nix
  ];

  # Select the Linux version
  boot.kernelPackages = pkgs.linuxPackages;

  # Set the hostname
  networking.hostName = "herbertito";
}
