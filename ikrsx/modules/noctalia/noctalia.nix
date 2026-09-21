{ lib, ... }:

{
  programs.noctalia = lib.mkForce {
    enable = true;
    settings = ./noctalia-config.toml;
  };
}
