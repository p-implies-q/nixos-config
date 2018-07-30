{ config, ... }:

{
  # Configure sudo
  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

}
