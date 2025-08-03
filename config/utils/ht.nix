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
    buildInputs = with pkgs.haskellPackages; [
      fast-tags
      haskell-debug-adapter
      cabal-install
      hoogle
    ];
    nvimSkipModules = [
      "haskell-tools.hoogle.helpers"
    ];
    extraConfigLua = ''
      local ht = require('haskell-tools')
      local bufnr = vim.api.nvim_get_current_buf()
      local opts = { noremap = true, silent = true, buffer = bufnr, }

      -- CodeLens
      vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)

      -- Hoogle search
      vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)

      -- Evaluate all snippets
      vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)

      -- Toggle GHCi repl (package)
      vim.keymap.set('n', '<leader>rr', ht.repl.toggle, opts)

      -- Toggle GHCi repl (current buffer)
      vim.keymap.set('n', '<leader>rf', function()
        ht.repl.toggle(vim.api.nvim_buf_get_name(0))
      end, opts)

      -- Quit repl
      vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)
    '';
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
