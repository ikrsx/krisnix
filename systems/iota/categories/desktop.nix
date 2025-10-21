{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "gb";
      excludePackages = [ pkgs.xterm ];
    };

    displayManager.ly = { enable = true; };
  };
}
