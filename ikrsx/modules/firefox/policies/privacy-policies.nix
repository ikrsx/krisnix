{
  programs.firefox.policies = {
    SanitizeOnShutdown = {
      Cookies = true;
      Cache = true;
      FormData = true;
      History = true;
      SiteSettings = true;
      Sessions = true;
      Exceptions = [
        "https://github.com"
        "https://mail.tutanota.com"
        "https://mail.proton.me"
        "https://web.whatsapp.com"
        "https://linkedin.com"
        "https://discord.com"
        "https://claude.ai"
        "https://chatgpt.com"
      ];
      Locked = true;
    };

    EnableTrackingProtection = {
      Value = true;
      Locked = true;
      Cryptomining = true;
      Fingerprinting = true;
      EmailTracking = true;
      SuspectedFingerprinting = true;
      Category = "strict";
      BaselineExceptions = true;
      ConvenienceExceptions = true;
    };
  };
}
