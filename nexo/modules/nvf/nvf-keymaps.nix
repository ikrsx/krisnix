{
  programs.nvf.settings.vim = {
    globals.mapleader = " ";

    keymaps = [
    {
      key = "<leader>n";
      mode = "n";
      silent = true;
      action = ":NvimTreeToggle<CR>";
    }

    {
      key = "<leader>ff";
      mode = "n";
      action = ":find";
    }

    {
      key = "<leader>fb";
      mode = "n";
      silent = true;
      action = ":lua vim.lsp.buf.format()<CR>";
    }

    {
      key = "<leader>ca";
      mode = "n";
      action = ":lua vim.lsp.buf.code_action()<CR>";
    }

    {
      key = "<leader>bb";
      mode = "n";
      action = ":buffer";
    }

    {
      key = "<leader>bn";
      mode = "n";
      silent = true;
      action = ":bnext<CR>";
    }

    {
      key = "<leader>bp";
      mode = "n";
      silent = true;
      action = ":bprevious<CR>";
    }

    {
      key = "<leader>bd";
      mode = "n";
      silent = true;
      action = ":bdel<CR>";
    }
    ];
  };
}
