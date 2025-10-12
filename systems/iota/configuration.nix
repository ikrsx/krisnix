{ lib, ... }:

{
  imports = [
    ./disko.nix
    ./hardware-configuration.nix
    ./categories/boot.nix
    ./categories/console.nix
    ./categories/desktop.nix
    ./categories/networking.nix
    # ./categories/stylix.nix
    ./categories/system-packages.nix
    ./categories/time-locale.conf
    ./categories/users.nix
    ./categories/virtualisation.nix
  ];

  system.stateVersion = "25.05";
}
