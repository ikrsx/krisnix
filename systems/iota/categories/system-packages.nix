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
    kitty
  ];
  
  programs.nano.enable = false;
}
