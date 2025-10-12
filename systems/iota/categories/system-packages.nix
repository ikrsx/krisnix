{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    git
    neovim
    tree
    bottom
    bat
    speedtest-cli
    lsd
    home-manager
    nautilus
    kitty
  ];
  
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    terminus_font
  ];

  programs.nano.enable = false;
}
