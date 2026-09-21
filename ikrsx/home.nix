{
  imports = [ ./modules/default.nix ];

  home = {
    username = "ikrsx";
    homeDirectory = "/home/ikrsx";
    stateVersion = "26.11";
  };

  services.mpris-proxy.enable = true;

  programs = {
    bat.enable = true;
    bottom.enable = true;
  };
}
