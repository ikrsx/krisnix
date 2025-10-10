{ config, ... }:
let
  workdir = "${config.home.homeDirectory}/Workstation/Development/krisnix";
  configfile = "${workdir}/users/ikrsx/dotfiles";
in
{
  programs.bash = {
    enable = true;
    
    shellAliases = {
      clean = "sudo nix-collect-garbage -d";
      reload = "sudo nixos-rebuild switch --flake ${workdir}#iota";
      reload-home = "home-manager switch --flake ${workdir}#ikrsx";
      btm = "btm --theme gruvbox";
      cat = "bat";
      ls = "lsd";
      krisnix = "cd ${workdir}";
      edit-nix = "nvim ${workdir}";
    };

    initExtra = ''
      PS1=' \[\e[38;5;226;1;2m\]\w\n\[\e[0m\] \[\e[38;5;128;1m\]>\[\e[0m\] '
    '';
  };
}
