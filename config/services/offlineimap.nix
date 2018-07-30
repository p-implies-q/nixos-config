{ config, ... }:

{
  services.offlineimap = {
    enable = true;
    install = true;
  };
}