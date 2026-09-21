{
  programs.firefox.policies = {
    AIControls = {
      Default = {
        Value = "blocked";
        Locked = true;
      };

      Translations = {
        Value = "available";
        Locked = true;
      };
    };
  };
}
