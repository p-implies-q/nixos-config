{ config, pkgs, ... }:

{
  imports = [ ../system/xserver.nix
              ../../secret/factorio-password.nix
                ];

  environment.systemPackages = with pkgs; [
    factorio
  ];
}
