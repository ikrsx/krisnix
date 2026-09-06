{
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
}
