{pkgs, ...}: {
  imports = [
    ./parsley.nix
  ];

  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "nvlime";
    src = pkgs.fetchFromGitHub {
      owner = "monkoose";
      repo = "nvlime";
      rev = "228e4fa8c7d10b1ed07b1649a63743613b77a828";
      hash = "sha256-pX4kmiTzRrUFUqAYmuUuEN66R67WDxnwFi5ZmAWVKAc=";
    };
  })];

  globals.nvlime_config.cmp.enabled = true;
}
