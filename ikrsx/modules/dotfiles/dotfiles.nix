{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/Developments/krisnix/ikrsx/modules/dotfiles";
  symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  xdg.configFile."niri" = {
    source = symlink "${dotfiles}/niri";
    recursive = true;
  };

  xdg.configFile."kitty" = {
    source = symlink "${dotfiles}/kitty";
    recursive = true;
  };

  xdg.configFile."nvim" = {
    source = symlink "${dotfiles}/nvim";
    recursive = true;
  };

  xdg.configFile."fuzzel" = {
    source = symlink "${dotfiles}/fuzzel";
    recursive = true;
  };

  xdg.configFile."waybar" = {
    source = symlink "${dotfiles}/waybar";
    recursive = true;
  };
}
