{ config, pkgs, ... }:

{

  services = {
    # Have emacs running as a daemon in the background
    emacs = {
      enable = true;
      defaultEditor = true;
    };
  };

  environment.systemPackages = with pkgs; [
    ack
    aspell
    aspellDicts.en
    aspellDicts.es
    aspellDicts.nl
    mu
    silver-searcher
  ];
}