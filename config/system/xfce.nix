{ config, pkgs, ...}:

{
  imports = [
  ./xserver.nix
  ];

  services.xserver.desktopManager.xfce = {
    enable     = true;
    enableXfwm = true;
    thunarPlugins = [
      pkgs.xfce.thunar-archive-plugin
    ];
  };

  environment.systemPackages = with pkgs.xfce; [
    xfce4_battery_plugin
    xfce4_xkb_plugin
    xfce4_whiskermenu_plugin
  ];

}
