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
    firefox
    libreoffice-qt
    hunspell
    hyphenDicts.en_US
  ];
}
