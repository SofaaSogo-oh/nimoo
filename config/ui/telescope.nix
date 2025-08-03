{keymapLib, ...}: with keymapLib; {
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true; 
      fzf-native.enable = true;
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal.prompt_position = "top";
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>b" = {
        action = "buffers";
        options = {
          desc = "+buffer";
        };
      };
      "<leader>tf" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>tr" = {
        action = "live_grep";
        options = {
          desc = "Find text";
        };
      };
      "<leader>tR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>tg" = {
        action = "oldfiles";
        options = {
          desc = "Recent";
        };
      };
      "<leader>tb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Search git files";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Status";
        };
      };
      "<leader>sa" = {
        action = "autocommands";
        options = {
          desc = "Auto Commands";
        };
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Buffer";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>sC" = {
        action = "commands";
        options = {
          desc = "Commands";
        };
      };
      "<leader>sD" = {
        action = "diagnostics";
        options = {
          desc = "Workspace diagnostics";
        };
      };
      "<leader>sh" = {
        action = "help_tags";
        options = {
          desc = "Help pages";
        };
      };
      "<leader>sH" = {
        action = "highlights";
        options = {
          desc = "Search Highlight Groups";
        };
      };
      "<leader>sk" = {
        action = "keymaps";
        options = {
          desc = "Keymaps";
        };
      };
      "<leader>sM" = {
        action = "man_pages";
        options = {
          desc = "Man pages";
        };
      };
      "<leader>sm" = {
        action = "marks";
        options = {
          desc = "Jump to Mark";
        };
      };
      "<leader>so" = {
        action = "vim_options";
        options = {
          desc = "Options";
        };
      };
      "<leader>sR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>uC" = {
        action = "colorscheme";
        options = {
          desc = "Colorscheme preview";
        };
      };
    };
  };
  keymaps = map cmdKey [
    ((Key "n" "<leader>sd" "Telescope diagnostics bufnr=0") // (KeyDesc "Document diagnostics"))
    ((Key "n" "<leader>fe" "Telescope file_browser") // (KeyDesc "File browser"))
    ((Key "n" "<leader>fE" "Telescope file_browser path=%:p:h select_buffer=true") // (KeyDesc "File browser"))
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
