{ config, pkgs, ... }:

{
  # Define fonts
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      emacs-all-the-icons-fonts
      google-fonts
      nerdfonts
    ];
  };
}
