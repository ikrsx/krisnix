{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "gb";
      excludePackages = [ pkgs.xterm ];
      desktopManager.xfce = {
        enable = true;
      };
    };

    displayManager.ly = { enable = true; };
  };
}
