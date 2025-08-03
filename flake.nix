{
  description = "So far, so good Nixvim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixvim,
    flake-parts,
    ...
  } @ inputs: flake-parts.lib.mkFlake {inherit inputs;} {
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    perSystem = {
      pkgs, 
      system,
      ...
    }: let
      nixvimLib = nixvim.lib.${system};
      nixvim' = nixvim.legacyPackages.${system};
      nixvimModule = {
        inherit pkgs;
        module = import ./config;
        extraSpecialArgs = {
          # inherit (inputs) nixpkgs-unstable;
          keymapsLib = import ./lib/keys.nix { inherit (pkgs) lib; };
        };
      };
      nvim = nixvim'.makeNixvimWithModule nixvimModule;
    in {
      checks = {
        default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
      };

      packages = {
        default = nvim;
      };
    };
  };
}
