{
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
}
