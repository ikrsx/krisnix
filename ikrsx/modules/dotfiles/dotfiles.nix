{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/Developments/krisnix/ikrsx/modules/dotfiles";
  symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  xdg.configFile."dms" = {
    source = symlink "${dotfiles}/dms";
    recursive = true;
  };

  xdg.configFile."niri" = {
    source = symlink "${dotfiles}/niri";
    recursive = true;
  };

  xdg.configFile."kitty" = {
    source = symlink "${dotfiles}/kitty";
    recursive = true;
  };
}
