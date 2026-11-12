{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      inter
      nerd-fonts.jetbrains-mono
      corefonts
      noto-fonts-color-emoji
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        sansSerif = [ "Inter" ];
        serif = [ "Liberation Serif" ];
        monospace = [ "JetBrainsMono Nerd Font" ];
        emoji = [ "pkgs.noto-fonts-color-emoji" ];
      };
    };
  };
}
