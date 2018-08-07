{ config, pkgs, ... }:

{
  # Add all the basic command-line tool I use for sysadmin

  environment.systemPackages = with pkgs; [
    # Terminal utilities
    autoconf
    automake
    bfg-repo-cleaner
    binutils
    file
    gcc
    gitFull
    gnumake
    gnupg
    htop
    keychain
    pass
    pv
    python
    psmisc
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

  programs.ssh.startAgent = true;

}
