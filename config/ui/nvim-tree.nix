{pkgs, ...}: {
  plugins = {
    nvim-tree = {
      enable = true;
      git = {
        enable = true;
        ignore = false;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>NvimTreeToggle<CR>";
      options.desc = "Tree Toggle";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>NvimTreeFocus<CR>";
      options.desc = "Tree focus";
    }
  ];
}
