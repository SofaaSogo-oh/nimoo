{
  plugins.startup = {
    enable = true;

    colors = {
      background = "#ffffff";
      foldedSection = "#ffffff";
    };

    sections = {
      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          "⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤"
          "⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛"
          "⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀"
          "⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤"
          "⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛"
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      bottom = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        title = "Bottom";
        margin = 5;
        content = ["Everyone is connected"];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            " Find File"
            "Telescope find_files"
            "ff"
          ]
          [
            "󰍉 Find Word" 
            "Telescope live_grep"
            "fr"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
          [
            " File Browser"
            "Telescope file_browser"
            "fe"
          ]
          [
            "🖮 Mappings"
            "Telescope keymaps"
            "fm"
          ]
          [
            " Quit"
            "qa"
            "q"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    options = {
      paddings = [
        1
        3
        1
      ];
    };

    parts = [
      "header"
      "body"
      "bottom"
    ];
  };
}
