{
  programs.firefox.policies = {
    ExtensionSettings = {
      "uBlock0@raymondhill.net" = {
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      };

      "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/{446900e4-71c2-419f-a6a7-df9c091e268b}/latest.xpi";
      };

      "{bbb880ce-43c9-47ae-b746-c3e0096c5b76}" = {
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/{bbb880ce-43c9-47ae-b746-c3e0096c5b76}/latest.xpi";
      };

      "FirefoxColor@mozilla.com" = {
        installation_mode = "force_installed";
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/FirefoxColor@mozilla.com/latest.xpi";
      };
    };

    FirefoxHome = {
      Search = true;
      Locked = true;
      Stories = true;
      SponsoredStories = true;
      TopSites = false;
      SponsoredTopSites = false;
      Highlights = false;
      Snippets = false;
    };

    SearchEngines = {
      Remove = [
        "Google"
        "Bing"
        "Perplexity"
        "Wikipedia (en)"
      ];
    };
  };
}
