{
  plugins.cmake-tools = {
    enable = true;
    settings = {
      cmake_build_directory = "out";
      cmake_notifications = {
        refresh_rate_ms = 80;
        spinner = [
          "▱▱▱▱▱▱▱"
          "▰▱▱▱▱▱▱"
          "▰▰▱▱▱▱▱"
          "▰▰▰▱▱▱▱"
          "▰▰▰▰▱▱▱"
          "▰▰▰▰▰▱▱"
          "▰▰▰▰▰▰▱"
          "▰▰▰▰▰▰▰"
        ];
      };
      cmake_regenerate_on_save = false;
    };
  };
  keymaps = [
    {
      mode = "n";    
      key = "<leader>cs";
      action = "<CMD>CMakeSettings<CR>";
    }
    {
      mode = "n";    
      key = "<leader>cg";
      action = "<CMD>CMakeGenerate<CR>";
    }
    {
      mode = "n";    
      key = "<leader>cb";
      action = "<CMD>CMakeBuild<CR>";
    }
    {
      mode = "n";
      key = "<leader>cb";
      action = "<cmd>CMakeRun<CR>";
    }
  ];
}
