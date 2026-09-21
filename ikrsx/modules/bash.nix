{
  programs.bash = {
    enable = true;

    shellAliases = {
      ls = "lsd";
      cat = "bat";
      cleanup = "sudo nix-collect-garbage -d";
      rebuild = "sudo nixos-rebuild switch --flake";
      rebuild-boot = "sudo nixos-rebuild boot --flake";
    };

    bashrcExtra = ''
      pfetch
      export PS1='\[\e[95m\]\[\e[0m\] \[\e[95;1m\]\W\[\e[0m\] \[\e[94;1;2m\]$(r=$(git branch --list 2> /dev/null | grep '"'"'* '"'"' | cut -d '"'"' '"'"' -f2) && [[ -n "$r" ]] && echo "󰊢 $r")\n\[\e[0;92m\]\$\[\e[0m\] '
    '';
  };
}
