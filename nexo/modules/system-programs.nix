{ pkgs, ... }:

{
  programs.nano.enable = false;

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    xwayland-satellite
    kitty
    loupe
    clapper
    qtengine
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
