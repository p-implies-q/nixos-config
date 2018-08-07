{ config, pkgs, ... }:

{
  services.offlineimap = {
    enable = true;
    install = true;
    path = with pkgs; [ pass bash mu gnupg ];
  };
}