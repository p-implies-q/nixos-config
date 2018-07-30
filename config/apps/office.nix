{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostscript
    libreoffice
  ];
}
