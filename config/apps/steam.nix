{ config, pkgs, ... }:

{
  imports = [ ../system/xserver.nix
                ];

  users.users.david.packages = [
    pkgs.steam
  ];
  hardware.opengl.driSupport32Bit = true;
  hardware.pulseaudio.support32Bit = true;

  environment.systemPackages = with pkgs; [
    steam
  ];
}
