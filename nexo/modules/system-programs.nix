{ pkgs, ... }:

{
  programs.nano.enable = false;
  programs.qtengine.enable = true;

  services.gvfs.enable = true;
  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    git
    lsd
    bat
    dux-gop
    duf
    dnsmasq
    virt-manager
    xwayland-satellite
    kitty
    loupe
    clapper
    gnome-calculator
    libreoffice
    firefox
    morewaita-icon-theme
    adw-gtk3
    nil
    bash-language-server
  ];
}
