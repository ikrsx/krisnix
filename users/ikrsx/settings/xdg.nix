{ config, ... }: 
{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    download = "${config.home.homeDirectory}/Workstation/Downloads";
    documents = "${config.home.homeDirectory}/Workstation/Documents";
    music = "${config.home.homeDirectory}/Workstation/Audios";
    pictures = "${config.home.homeDirectory}/Workstation/Gallery";
    videos = "${config.home.homeDirectory}/Workstation/Movies";
    
    extraConfig = {
      XDG_MISC_DIR = "${config.home.homeDirectory}/";
      XDG_DESKTOP_DIR = "${config.home.homeDirectory}/";
      XDG_TEMPLATES_DIR = "${config.home.homeDirectory}/";
      XDG_PUBLICSHARE_DIR = "${config.home.homeDirectory}/";
    };
  };
}
