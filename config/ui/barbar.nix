{pkgs, ...}: {
    plugins.barbar.enable = true;
    keymaps = [
        {
            mode = "n";
            key = "<A-,>";
            action = "<cmd>BufferPrevious<CR>";
        }
        {
            mode = "n";
            key = "<A-.>";
            action = "<cmd>BufferNext<CR>";
        }
        {
            mode = "n";
            key = "<A-<>";
            action = "<cmd>BufferMovePrevious<CR>";
        }
        {
            mode = "n";
            key = "<A->>";
            action = "<cmd>BufferMoveNext<CR>";
        }
        {
            mode = "n";
            key = "<A-c>";
            action = "<cmd>BufferClose<CR>";
        }
        {
            mode = "n";
            key = "<A-p>";
            action = "<cmd>BufferPin<CR>";
        }
    ];
}
