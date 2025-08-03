{ lib }: 
let
  Key = mode: key: action: { inherit mode key action; };
  luaKey = k: k // {
    lua = true;
    options = { noremap = true; silent = true; };
  };
  cmdKey = k: k // {
    action = "<cmd>${k.action}<CR>";
  };
in {
  inherit Key luaKey cmdKey;
}
