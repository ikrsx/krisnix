{
  imports = [ ./policies/firefox-policies.nix ];

  programs.firefox = {
    enable = true;

    profiles.ikrsx = {
      id = 0;
      isDefault = true;
      extensions.force = true;
    };
  };
}
