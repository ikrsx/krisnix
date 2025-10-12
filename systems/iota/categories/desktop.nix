{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "gb";
      excludePackages = [ pkgs.xterm ];
    };
    
    displayManager.gdm = { enable = true; };

    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.gnome.mutter]
	experimental-features=['scale-monitor-framebuffer', 'xwayland-native-scaling']
      '';
    };

    gnome = {
      core-apps.enable = false;
      core-developer-tools.enable = false;
    };
  };

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    gnome-user-docs
    gnome-backgrounds
  ];
}
