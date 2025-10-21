{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "gb";
      excludePackages = [ pkgs.xterm ];
    };

    desktopManager.lxqt = {
      enable = true;
    };

    displayManager.ly = { enable = true; };
  };
}
