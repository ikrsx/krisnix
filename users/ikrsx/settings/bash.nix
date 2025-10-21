{ config, ... }:
let
  confile = "${config.home.homeDirectory}/Workstation/Development/krisnix";
in
{
  programs.bash = {
    enable = true;
    
    shellAliases = {
      sf = "setfont ter-124n";
      btm = "btm --theme gruvbox";
      cat = "bat";
      ls = "lsd";
      vi = "nvim";
      vim = "nvim";
      krisnix = "cd ${confile}";
      clean = "sudo nix-collect-garbage -d";
      reload = "sudo nixos-rebuild switch --flake ${confile}#iota";
      reload-home = "home-manager switch --flake ${confile}#ikrsx";
      update = "sudo nix flake update";
      optimise = "sudo nix store optimise";
    };

    initExtra = ''
      PS1=' \[\e[38;5;226;1;2m\]\w\n\[\e[0m\] \[\e[38;5;128;1m\]>\[\e[0m\] '
    '';
  };
}
