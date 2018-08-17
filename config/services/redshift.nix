{ config, pkgs, ...}:

{
  services.redshift = {
    enable = true;
    # provider = "geoclue2";
    latitude = "4.7110";
    longitude = "-74.0";

    # temperature.day = 25000;
    # temperature.night = 5000;

    brightness.day = "1";
    brightness.night = "0.6";
    };
    environment.systemPackages = [pkgs.redshift];
}
