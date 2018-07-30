{ config, ...}:

# This file gathers all the information needed to configure a system to my
# liking before X is launched. If I ever consider rolling my own install usb,
# this is probably what it should be based on.

{
  imports = [
    ../hardware-configuration.nix
    ./nix
    ./system
    ./apps/sysadmin.nix
  ];
}
