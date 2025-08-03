{ lib }: 
let
  Key = mode: key: action: { inherit mode key action; };
  KeyDesc = desc: {options.desc = desc; };
  SilentKey = { options.silent = true; };
  luaKey = k: k // {
    lua = true;
    options = { noremap = true; silent = true; };
  };
  cmdKey = k: k // {
    action = "<cmd>${k.action}<CR>";
  };
in {
  inherit Key KeyDesc luaKey cmdKey SilentKey;
}
