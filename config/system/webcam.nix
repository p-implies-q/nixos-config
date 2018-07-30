{ config, pkgs }:
{
  # Install extra packages that my xmonad environment depends on
  environment.systemPackages = with pkgs; [
    cheese
  ];
}
