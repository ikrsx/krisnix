{
  imports = [
    ./hardware-configuration.nix
    ./modules/default.nix
  ];

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

  system.stateVersion = "26.11";
}
