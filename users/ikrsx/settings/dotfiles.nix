{ config, ... }: 
let
  dotfiles = "${config.home.homeDirectory}/Workstation/Development/krisnix/users/ikrsx/dotfiles";
  create_symlink = loc: config.lib.file.mkOutOfStoreSymlink loc;
  configs = {
    nvim = "nvim";
    kitty = "kitty";
  };
in 
{
  xdg.configFile = builtins.mapAttrs
    (name: file: {
      source = create_symlink "${dotfiles}/${file}";
      recursive = true;
    })
    configs;

    home.file.".local/share/backgrounds/".source = ../dotfiles/backgrounds;
}
