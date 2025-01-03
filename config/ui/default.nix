{
  plugins = {
    web-devicons.enable = true;
    lualine = {
      enable = true;
      settings.options.globalstatus = true;
    };
  };
  imports = [
    ./nvim-tree.nix
    ./barbar.nix
    ./undootree.nix
    ./telescope.nix
    ./indent-blankline.nix
    ./noice.nix
    ./startup.nix
  ];
}
