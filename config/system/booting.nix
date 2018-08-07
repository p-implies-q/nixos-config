{ config, ... }:

{
  # Boot using the systemd uefi-boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

}
