{ pkgs, ... }:

{
  console = {
    earlySetup = true;
    font = "${pkgs.terminus_font}/share/consolefonts/ter-124n.psf.gz";
    packages = [ pkgs.terminus_font ];
    keyMap = "uk";
  };
}
