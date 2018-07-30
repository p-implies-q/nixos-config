{ config, pkgs, ... }:

{
  # Add all the basic command-line tool I use for sysadmin

  environment.systemPackages = with pkgs; [
    # Terminal utilities
    autoconf
    automake
    binutils
    file
    gcc
    gitFull
    gnumake
    gnupg
    htop
    pass
    pv
    python
    mkpasswd
    stow
    tree
    usbutils
    vim
    wget
    which

    # Archive utilities
    p7zip
    unrar
    unzip
    zip
  ];
}
