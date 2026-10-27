{
  virtualisation = {
    docker.enable = true;
    libvirtd.enable = true;
  };

  services = {
    qemuGuest.enable = true;
    spice-vdagentd.enable = true;
  };
}
