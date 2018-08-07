{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    evtest
    xorg.libXtst
  ];
}
