{ config, pkgs, ... }:

{
  imports = [ ../system/xserver.nix ];

  # Setup chromium with a number of extensions
  programs.chromium = {
    enable = true;
    extensions = [
      "dbepggeogbaibhgnhhndojpepiihcmeb" # Vimium
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
      "gnijgfamanlebomemfebpndnnbbpcijl" # Anticipation
      "gcbommkclmclpchllfjekcdonpmejbdp" # HTTPS Everywhere
    ];
  };

  services = {

    # Keep a transmission daemon running
    transmission = {
      enable = true;
      settings = {
        umask = 2; # Gives users in group 'transmission' access
        incomplete-dir-enabled = true;
        rpc-whitelist = "127.0.0.1,192.169.*.*";
        speed-limit-up-enabled = true;
        speed-limit-up = 0;
      };
    };

    # Hide the cursor when not in use
    unclutter.enable = true;

  };

  environment.systemPackages = with pkgs; [
    alsaUtils
    chromium
    dzen2
    feh
    imagemagick
    pavucontrol
    termite
    tmux
    transmission
    vlc
    zathura

  ];
}
