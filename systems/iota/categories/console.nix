{ pkgs, ... }:

{
  console = {
    earlySetup = true;
    font = "${pkgs.terminus_font}/share/consolefonts/ter-124n.psf.gz";
    keyMap = "uk";
  };
}
