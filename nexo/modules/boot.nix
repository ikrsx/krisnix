{
  boot = {
    consoleLogLevel = 3;
    initrd.verbose = false;
    plymouth.enable = true;

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
