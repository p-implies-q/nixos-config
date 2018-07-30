{ config, ... }:

# Further customization of command-line functioning
{
    # Set shell to fish
  programs.fish.enable = true;

  # Shell aliases
  # environment.shellAliases = {
  programs.fish.shellAliases = {
    ".."  = "cd ..";
    "..." = "cd ../..";
    "ls"  = "ls --color -h --group-directories-first";
    "cls" = "clear; and ls --color -h --group-directories-first";
    "mkdir" = "mkdir -p -v";
    "hgrep" = "history | grep -i ";
  };

}
