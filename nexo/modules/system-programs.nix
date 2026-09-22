{ pkgs, ... }:

{
  programs.nano.enable = false;

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    bottom
    pfetch-rs
    xwayland-satellite
    kitty
    loupe
    clapper
    gnome-calculator
    firefox
    libreoffice
  ];
}
