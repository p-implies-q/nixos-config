{ config, ... }:

{
  # Enable touchpad
  services.xserver.synaptics = {
    enable = true;
    twoFingerScroll = true;
    accelFactor = "0.04";
    minSpeed="1.0";
    maxSpeed="1.4";
    tapButtons = true;
    palmDetect = true;
  };
}
