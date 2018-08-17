{ config, pkgs, ... }:

{
  imports = [
    ./xserver.nix
  ];

  # Define the xmonad settings
  services.xserver.windowManager = {
    xmonad = {
      enable = true;
      enableContribAndExtras = true;
      extraPackages = haskellPackages: [
        haskellPackages.xmonad-contrib
        haskellPackages.xmonad-extras
        haskellPackages.xmonad
      ];
    };

    default = "xmonad";
  };

  services.compton.enable = true;

  # Install extra packages that my xmonad environment depends on
  environment.systemPackages = with pkgs; [
    dmenu
    dunst
    libnotify
    termite

    haskellPackages.taffybar
    haskellPackages.xmobar
    haskellPackages.yeganesh
  ];
}
