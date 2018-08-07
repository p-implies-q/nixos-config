{ config, pkgs, ...}:

{

  # The NixOS release to be compatible with for stateful data such as databases.
  # system.nixos.stateVersion = "17.09";

  # Setup nix configuration
  nix = {
    useSandbox = true;
    buildCores = 0; # Autodetect and use all

    # Automatic garbage collection
    gc.automatic = true;
    gc.dates = "03:15";
    gc.options = "--delete-older-than 14d";
  };


  # Nix utilities
  environment.systemPackages = with pkgs; [
    nix-prefetch-scripts
  ];

}
