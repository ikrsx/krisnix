{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot = {
    plymouth.enable = true;
    initrd.verbose = false;
    consoleLogLevel = 3;

    kernelParams = [
      "quiet"
      "rd.udev.log_level=3"
      "rd.systemd.show_status=auto"
    ];

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "nexo";
    networkmanager.enable = true;

    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
      "8.8.8.8"
      "8.8.4.4"
    ];

    firewall = {
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_GB.UTF-8";
  console.keyMap = "uk";

  users.users.ikrsx = {
    isNormalUser = true;

    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  programs = {
    nano.enable = false;

    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
  };

  environment.systemPackages = with pkgs; [
    git
    bottom
    lsd
    bat
    unzip
    p7zip
  ];

  system.stateVersion = "26.11";
}
