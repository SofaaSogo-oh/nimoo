{ keymapLib, ... }:
with keymapLib; {
  plugins.barbar.enable = true;
  keymaps = map cmdKey [
    (Key "n" "<A-,>" "BufferPrevious")
    (Key "n" "<A-.>" "BufferNext")
    (Key "n" "<A-<>" "BufferMovePrevious")
    (Key "n" "<A->>" "BufferMoveNext")
    (Key "n" "<A-c>" "BufferClose")
    (Key "n" "<A-p>" "BufferPin")
    (Key "n" "<A-0>" "BufferGoto 0")
    (Key "n" "<A-w>" "BufferCloseAllButCurrentOrPinned")
  ];
}
