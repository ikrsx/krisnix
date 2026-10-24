{ pkgs, ... }:

{
  programs = {
    nano.enable = false;
    qtengine.enable = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    xwayland-satellite
    kitty
    loupe
    clapper
    morewaita-icon-theme
    gnome-calculator
    firefox
    libreoffice
    filezilla
  ];

  fonts.packages = with pkgs; [
    inter
    nerd-fonts.jetbrains-mono
    corefonts
  ];
}
