{
  imports = [
    ./stylix-base16.nix
    ./stylix-fonts.nix
    ./stylix-icons-cursors.nix
  ];

  stylix = {
    enable = true;
    autoEnable = false;

    targets = {
      gtk.enable = true;
      qt.enable = true;
    };
  };
}
