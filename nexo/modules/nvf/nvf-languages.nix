{
  programs.nvf.settings.vim.languages = {
    bash = {
      enable = true;
      lsp.enable = true;
    };

    clang = {
      enable = true;
      lsp.enable = true;
    };

    markdown = {
      enable = true;
      lsp.enable = true;
    };

    nix = {
      enable = true;
      lsp.enable = true;
    };
  };

  programs.nvf.settings.vim.lsp.servers = {
    dart = {
      cmd = [
        "dart"
        "language-server"
        "--protocol=lsp"
      ];
      filetypes = [ "dart" ];
      root_markers = [
        "pubspec.yaml"
        ".git"
      ];

      init_options = {
        onlyAnalyzeProjectsWithOpenFiles = true;
        suggestFromUnimportedLibraries = true;
        closingLabels = true;
        outline = true;
        flutterOutline = true;
      };

      settings = {
        dart = {
          completeFunctionCalls = true;
          showTodos = true;
        };
      };
    };

    python = {
      cmd = [
        "basedpyright-langserver"
        "--stdio"
      ];
      filetypes = [ "python" ];
      root_markers = [
        "pyrightconfig.json"
        "pyproject.toml"
        "setup.py"
        "setup.cfg"
        "requirements.txt"
        "Pipfile"
        ".git"
      ];
    };

    yaml = {
      cmd = [ "yaml-language-server" ];
      filetypes = [
        "yaml"
        "yaml.docker-compose"
        "yaml.gitlab"
        "yaml.helm-values"
      ];
      root_markers = [ ".git" ];
      settings = {
        redhat.telemetry.enabled = false;
        yaml.format.enable = true;
      };
    };
  };
}
