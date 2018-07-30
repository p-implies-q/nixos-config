{config, ...}:

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
    shell = "/run/current-system/sw/bin/zsh";
  };
}
