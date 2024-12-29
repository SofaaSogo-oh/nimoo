{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        char = "│"; # "│" or "▎"
      };
      scope = {
        enabled = true;
        char = "▎";
        show_end = false;
        show_exact_scope = true;
        show_start = false;
      };
      exclude = {
        buftypes = [
          "terminal"
          "nofile"
        ];
        filetypes = [
          "help"
          "alpha"
          "dashboard"
          "neo-tree"
          "Trouble"
          "trouble"
          "lazy"
          "mason"
          "notify"
          "toggleterm"
          "lazyterm"
          "nvterm"
        ];
      };
    };
  };
}
