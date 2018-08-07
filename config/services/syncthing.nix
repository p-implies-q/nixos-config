{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    syncthing
  ];

  systemd.user.services.syncthing = {
    description = "Syncthing";
    serviceConfig = {
      ExecStart = "${pkgs.syncthing}/bin/syncthing";
      Restart = "on-failure";
      WantedBy = [ "default.target" ];
    };
  };

}