{
  imports = [
    ./nvf-options.nix
    ./nvf-keymaps.nix
    ./nvf-theme.nix
    ./nvf-statusline.nix
    ./nvf-completion.nix
    ./nvf-languages.nix
  ];

  programs.nvf = {
    enable = true;

    settings.vim = {
      globals = {
        loaded_netrw = 1;
        loaded_netrwPlugin = 1;
      };

      autopairs.nvim-autopairs.enable = true;
      filetree.nvimTree.enable = true;
    };
  };
}
