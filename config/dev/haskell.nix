{config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    cabal2nix
    cabal-install
    (haskellPackages.ghcWithPackages (self: [
      # self.mtl
      self.xmonad
      self.xmonad-contrib
      self.taffybar
      self.cabal-install
      # self.ghc-mod
      ]))
    # ghc
    nix-prefetch-git
  ];
}
