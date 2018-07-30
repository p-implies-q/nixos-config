{ config, ... }:

{
  # Enable a firewall and networkmanager
  networking = {
    firewall.enable = false;
    networkmanager.enable = true;
  };

  # Enable an sshd daemon
  services = {
    openssh.enable = true;
  };


}
