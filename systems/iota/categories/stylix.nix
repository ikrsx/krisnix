{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;
    targets = {
      gtk.enable = true;
    };
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  };
}
