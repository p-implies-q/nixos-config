{config, pkgs, ...}:

{
  # Add a Pili user
  users.extraUsers."pili" = {
    name = "pili";
    description = "Pilar Quiroz";
    isNormalUser = true;
    uid = 1001;
    extraGroups = [
      "audio"
      "networkmanager"
      "transmission"
      "video"
      "wheel"
    ];
    createHome = true;
    home = "/home/pili";
    hashedPassword = "$6$nWSoZ9E5V1h22ro$DJaOe8VqleLSxDO0gt7rgHv8Mxc.349risb.RwoAzzi86phWhUj6l8k8yUH./ysrkGaL68ZXdaV0ur2Nd5yt9/";
    shell = "/run/current-system/sw/bin/fish";
  };

  environment.systemPackages = with pkgs; [
    atom
    audacity
    breeze-icons
    evince
    ffmpeg-full
    frei0r
    gimp
    google-chrome
    kdenlive
    keepassx2
    libreoffice

    xfce.xfce4-battery-plugin
    xfce.xfce4-datetime-plugin
    xfce.xfce4-pulseaudio-plugin
    xfce.xfce4-timer-plugin
    xfce.xfce4-whiskermenu-plugin
  ];

  services.xserver.desktopManager.xfce.enable = true;
}
