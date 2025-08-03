{pkgs, keymapLib, ...}: 
with keymapLib; {
  imports = [];

  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "haskell-tools";
    src = pkgs.fetchFromGitHub {
      owner = "mrcjkb";
      repo = "haskell-tools.nvim";
      rev = "v6.1.1";
      hash = "sha256-dhoAmIFkUolk4UfKcI26VltL7LElb2gooEUrJLnztV4=";
    };
    nvimSkipModules = [
      "haskell-tools.hoogle.helpers"
    ];
  })];

  keymaps = map luaKey [
      (Key "n" "<leader>lc" "vim.lsp.codelens.run")
      (Key "n" "<leader>hs" "require('haskell-tools').hoogle.hoogle_signature")
      (Key "n" "<leader>ea" "require('haskell-tools').lsp.buf_eval_all")
      (Key "n" "<leader>rr" "require('haskell-tools').repl.toggle")
      (Key "n" "<leader>rq" "require('haskell-tools').repl.quit")
      (Key "n" "<leader>rf" ''
        function()
          require('haskell-tools').repl.toggle(vim.api.nvim_buf_get_name(0))
        end
      '')
    ];
}
