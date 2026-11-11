{ config, ... }:

{
  programs.niri.enable = true;

  programs.dux-shell = {
    enable = true;
    systemd = {
      enable = true;
      restartIfChanged = true;
    };
  };

  programs.dux-files = {
    enable = true;
    portal.enable = true;
    systemd = {
      enable = true;
      restartIfChanged = true;
    };
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${config.programs.niri.package}/bin/niri-session";
        user = "ikrsx";
      };
    };
  };
}
