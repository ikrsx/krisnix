{ pkgs, ... }:

{
  stylix = {
    icons = {
      enable = true;
      package = pkgs.vimix-icon-theme;
      dark = "Vimix-dark";
      light = "Vimix";
    };

    cursor = {
      package = pkgs.vimix-cursors;
      name = "Vimix-cursors";
      size = 32;
    };
  };
}
