{keymapLib, ...}: with keymapLib; {
  plugins.lazygit.enable = true;
  keymaps = map cmdKey [
    (Key "n" "<leader>gl" "LazyGit")
  ];
}
