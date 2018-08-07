{config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    cabal2nix
  ];
}
