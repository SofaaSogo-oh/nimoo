{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
      # folding = false;
      # nixvimInjections = true;
      # grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
      nixGrammars = true;
    };
    treesitter-context = {
      enable = true;
      settings.max_lines = 2;
    };
    rainbow-delimiters.enable = true;
  };
}
