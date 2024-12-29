{
  globalOpts = {
    number = true;
    relativenumber = true;

    signcolumn = "yes";

    mouse = "a";

    ignorecase = true;
    smartcase = true;

    splitright = true;
    splitbelow = true;

    list = true;
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    # System clipboard support, needs xclip/wl-clipboard
    clipboard = {
      providers = {
        xsel.enable = true; # For X11
      };
      register = "unnamedplus";
    };

  };

  globals.mapleader = " ";
  colorscheme = "vim";
}
