{ config, ... }: 
let
  dotfiles = "${config.home.homeDirectory}/Workstation/Development/krisnix/users/ikrsx/dotfiles";
  create_symlink = loc: config.lib.file.mkOutOfStoreSymlink loc;
  theme = "Gruvbox-Green";
  configs = {
    nvim = "nvim";
    kitty = "kitty";
    "gtk-4.0" = "gtk-themes/${theme}/gtk-4.0";
    "gtk-3.0" = "gtk-themes/${theme}/gtk-3.0";
  };
in 
{
  xdg.configFile = builtins.mapAttrs
    (name: file: {
      source = create_symlink "${dotfiles}/${file}";
      recursive = true;
    })
    configs;

  home.file = {
    ".themes/".source = ../dotfiles/gtk-themes;
  };
}
