{ config, pkgs, ... }:

with pkgs;
let
  python-and-env-pkgs = pp: with pp; [
    ipython
    virtualenv
  ];
  python-and-env = python3.withPackages python-and-env-pkgs;
in

{

  environment.systemPackages = [
    liblapack
    openblas
    python-and-env
  ];
}
