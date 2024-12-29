{pkgs, ...}: {
  extraPlugins = [ (pkgs.vimUtils.buildVimPlugin {
    name = "parsley";
    src = pkgs.fetchFromGitHub {
      owner = "monkoose";
      repo = "parsley";
      rev = "c4100aa449bfa971dcfc56ffe4206ba034db08cc";
      hash = "sha256-u/ys2WDEu4GxUHQCuGr6ZB4l47myQ+gd8m/AIS7qYBc=";
    };
  }) ];
}
