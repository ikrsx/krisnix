{
  programs.noctalia = {
    enable = true;
    systemd.enable = true;
  };

  services = {
    displayManager.noctalia-greeter = {
      enable = true;
      settings = {
        cursor.size = 24;
        keyboard.layout = "uk";
      };
    };
  };

  security = {
    polkit.enable = true;
    pam.enable = true;
  };
}
