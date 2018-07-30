{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jekyll
    ruby
  ];
}
