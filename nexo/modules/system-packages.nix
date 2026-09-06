{ pkgs, ... }:

{
  programs = {
    nano.enable = false;

    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
  };

  environment.systemPackages = with pkgs; [
    git
    bottom
    lsd
    bat
    unzip
    p7zip
  ];
}
