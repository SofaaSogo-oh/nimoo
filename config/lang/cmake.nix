{keymapLib, ...}: 
with keymapLib; {
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
  keymaps = map cmdKey [
    (Key "n" "<leader>cs" "CMakeSettings")
    (Key "n" "<leader>cg" "CMakeGenerate")
    (Key "n" "<leader>cb" "CMakeBuild")
    (Key "n" "<leader>cr" "CMakeRun")
  ];
}
