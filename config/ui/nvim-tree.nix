{keymapLib, ...}: 
with keymapLib; {
  plugins = {
    nvim-tree = {
      enable = true;
      git = {
        enable = true;
        ignore = false;
      };
    };
  };

  keymaps = map cmdKey [
    ((Key "n" "<leader>ft" "NvimTreeToggle") // (KeyDesc "Tree Toggle"))
    ((Key "n" "<leader>ff" "NvimTreeFocus") // (KeyDesc "Tree Focus"))
  ];
}
