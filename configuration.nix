{ config, lib, pkgs, ... }:
# This file describes the brick specific setup, symlink this to
# 'configuration.nix' in /etc/nixos

{
  imports = [
    ./config/medium.nix

    ./config/apps/steam.nix

    ./config/dev/haskell.nix
    ./config/dev/keyboard.nix
    ./config/dev/python.nix

    ./config/services/syncthing.nix
    ./config/services/offlineimap.nix
    ./config/services/docker.nix
    # ./config/services/redshift.nix

    ./config/system/pili-support.nix


  ];


  # Add the network drives
  fileSystems."/exports/neurospin" = {
    device = "/home/export/neurospin";
    options = [ "bind" ];
  };

  services.nfs.server.enable = true;
  services.nfs.server.statdPort = 4000;
  services.nfs.server.lockdPort = 4001;
  services.nfs.server.exports = ''
    /exports             192.168.1.103/24(rw,fsid=0,no_subtree_check)
    /exports/neurospin   192.168.1.103/24(rw,nohide,insecure,no_subtree_check)
  '';
  networking.firewall.allowedTCPPorts = [ 2049 111 4000 4001 ];
  networking.firewall.allowedUDPPorts = [ 2049 111 4000 4001 ];

  # Select the Linux version
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Set the hostname
  networking.hostName = "herbert";
}
