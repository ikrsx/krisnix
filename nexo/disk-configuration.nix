{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/sda";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "500M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };

            plainSwap = {
              size = "4G";
              content = {
                type = "swap";
                discardPolicy = "both";
                resumeDevice = true;
              };
            };

            luks = {
              size = "100%";
              content = {
                type = "luks";
                name = "yantra";
                settings.allowDiscards = true;
                content = {
                  type = "filesystem";
                  format = "xfs";
                  mountpoint = "/";
                };
              };
            };
          };
        };
      };
    };
  };
}
