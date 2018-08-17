{ config, pkgs, ... }:

let
  solarized-theme = pkgs.fetchFromGitHub {
    owner = "anderspapitto";
    repo = "nixos-solarized-slim-theme";
    rev = "2822b7cb7074cf9aa36afa9b5cabd54105b3306c";
    sha256 = "0jp7qq02ly9wiqbgh5yamwd31ah1bbybida7mn1g6qpdijajf247";
  };

in

{
  # If loading the xserver, load all the base configuration
  imports = [ ./default.nix ];

  # Define the basic xserver configuration shared by all systems.
  services.xserver = {
      enable = true;
      desktopManager.xterm.enable = false;
      displayManager.slim.enable  = true;
      displayManager.slim.theme   = solarized-theme;
    };

  # Install some basic xorg utilities
  environment.systemPackages = with pkgs; [
    evtest
    gksu
    xorg.libXScrnSaver
    xdotool
    xorg.xbacklight
    xorg.xev
  ];
}
