{ config, lib, pkgs, ...}:

{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql96;
  };

  environment.systemPackages = with pkgs; [
    (python36.withPackages(ps: with ps;
      [
        django
        ipython
        jinja2
        psycopg2
      ]))];

}
