{ config, pkgs, ...}:

{
  # Add support for additional filesystems
  environment.systemPackages = with pkgs; [
    exfat
  ];
}
