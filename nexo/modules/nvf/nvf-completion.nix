{
  programs.nvf.settings.vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;

    setupOpts = {
      fuzzy.implementation = "lua";

      completion = {
        menu = {
          border = "rounded";
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None";
        };

        documentation = {
          window = {
            border = "rounded";
          };
        };
      };
    };
  };
}
