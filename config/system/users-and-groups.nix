{ config, pkgs, ...}:

{

  users.mutableUsers = false;

  users.extraUsers."david" = {
      name = "david";
      description = "David Janssen";
      isNormalUser = true;
      uid = 1000;
      extraGroups = [
        "audio"
        "git"
        "input"
        "networkmanager"
        "nixconf"
        "transmission"
        "video"
        "wheel"
      ];
      createHome = true;
      home = "/home/david";
      hashedPassword = "$6$P9tj0Fe9$c6V62PZza7aBqnBaAtqgLGlT2HccThWZ5dfrbZ2/kcaAWPAEOSxafbwQxbx1u1fUUQDWlvdCAtnWBAeJVKOhw.";
      shell = pkgs.fish;
  };

 users.extraGroups.nixconf.gid = 1000;

 users.defaultUserShell = "/run/current-system/sw/bin/fish";

}
