{keymapLib, ...}: with keymapLib; {
  plugins.undotree = {
    enable = true;
    settings = {
      autoOpenDiff = true;
      focusOnToggle = true;
    };
  };
  keymaps = map cmdKey [
    ((Key "n" "<leader>ut" "UndotreeToggle") // SilentKey // (KeyDesc "Undotree"))
  ];
}
