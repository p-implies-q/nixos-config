{ config, ... }:

{
  # Import the settings that should be included in all configurations.
  # NOTE: this excludes the following
  #   - laptop.nix
  #   - pili-support.nix
  #   - virtualisation.nix
  #   - any window-manager specific configurations or x-server
  imports = [
    ./audio.nix
    ./booting.nix
    ./fonts.nix
    ./i18n.nix
    ./filesystems.nix
    ./network.nix
    ./security.nix
    ./terminal.nix
    ./timezone.nix
    ./users-and-groups.nix
  ];
}
