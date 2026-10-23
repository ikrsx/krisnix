{ pkgs, ... }:

{
  programs.nano.enable = false;

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    bottom
    xwayland-satellite
    kitty
    loupe
    clapper
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
