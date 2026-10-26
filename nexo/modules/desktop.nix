{ config, ... }:

{
  programs = {
  niri.enable = true;
  dank-material-shell = {
    enable = true;
    enableCalendarEvents = false;
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
