{ config, pkgs, ... }:

{
  imports = [
    ./settings/bash.nix
    ./settings/dotfiles.nix
    ./settings/git.nix
    ./settings/xdg.nix
  ];
  
  home = {
    username = "ikrsx";
    homeDirectory = "/home/ikrsx";
    stateVersion = "25.11"; 
  };

  home.packages = with pkgs; [
    syncthing
    librewolf
    libreoffice-fresh
  ];
}
