{
  services = {
    qemuGuest.enable = true;
    spice-vdagentd.enable = true;
  };

  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "ikrsx" ];
}
