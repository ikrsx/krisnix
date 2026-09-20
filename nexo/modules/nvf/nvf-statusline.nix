{
  programs.nvf.settings.vim.statusline.lualine = {
    enable = true;
    setupOpts = {
      sections = {
        lualine_a = [ { "@1" = "mode"; icons_enabled = true; } ];

        lualine_c = [
          "%=" 
          { "@1" = "diff"; colored = true; }
          { "@2" = "diagnostics"; colored = true; }
        ];

        lualine_y = [ { "@1" = "branch"; icons_enabled = true; } ];

        lualine_z = [ { "@1" = "filename"; } ];

        lualine_b = [ ];
        lualine_x = [ ];
      };
    };
  };
}
