{
  wayland.windowManager.niri = {
    enable = true;
    extraConfig = builtins.readFile ./config.kdl;
  };
}
