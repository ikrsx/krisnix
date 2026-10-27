{ pkgs, ... }:

{
  programs = {
    nano.enable = false;
    qtengine.enable = true;
    virt-manager.enable = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    dnsmasq
    xwayland-satellite
    kitty
    loupe
    clapper
    morewaita-icon-theme
    adw-gtk3
    gnome-calculator
    firefox
    collabora-desktop
    filezilla
  ];

  fonts.packages = with pkgs; [
    inter
    nerd-fonts.jetbrains-mono
    corefonts
  ];
}
