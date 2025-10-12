{ config, pkgs, ... }:

{
  imports = [
    ./settings/bash.nix
    ./settings/dotfiles.nix
    ./settings/git.nix
    ./settings/neovim.nix
    ./settings/xdg.nix
  ];
  
  home = {
    username = "ikrsx";
    homeDirectory = "/home/ikrsx";
    stateVersion = "25.11"; 
  };

  home.packages = with pkgs; [
    git
    syncthing
    librewolf
    libreoffice-fresh
    loupe
    papers
    gnomeExtensions.user-themes
  ];
}
