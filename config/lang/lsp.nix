{
  plugins = {
    lsp-lines.enable = true;
    lsp-format.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        texlab.enable = true;
        nixd.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        html.enable = true;
        cssls.enable = true;
        ts_ls.enable = true;
        ghcide.enable = true;
        # hls.enable = true;
        hls = {
          enable = true;
          installGhc = true;
        };
      };

      keymaps = {
        lspBuf = {
          gd = "definition";
          gr = "references";
          gD = "declaration";
          gI = "implementation";
          gT = "type_definition";
          K = "hover";
          "<leader>cw" = "workspace_symbol";
          "<leader>cr" = "rename";
          qf = "code_action";
        };
        diagnostic = {
          "<leader>cd" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd>LspInfo<cr>";
    }
    {
      mode = "n";
      key = "<leader>ll";
      action = "<cmd>LspLog<cr>";
    }
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>LspRestart<cr>";
    }
  ];
}
