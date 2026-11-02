{ pkgs, ... }:

{
  programs = {
    nano.enable = false;
    qtengine.enable = true;
  };

  security.pam.services.hyprlock = {};

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    bottom
    dnsmasq
    xwayland-satellite
    kitty
    loupe
    clapper
    gnome-calculator
    libreoffice
    firefox
    filezilla
    morewaita-icon-theme
    adw-gtk3
    swayidle
    waybar
    swaybg
    wofi
    hyprlock
    nil
    bash-language-server
    docker-language-server
  ];

  fonts.packages = with pkgs; [
    inter
    nerd-fonts.jetbrains-mono
    corefonts
  ];
}
