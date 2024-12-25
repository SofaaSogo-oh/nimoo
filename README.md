<h2 align="center">nimoo</h2>
> So far so good declarative nixvim config, I guess?

**Test config**
You can reconfigure this for sure. To test your new config you can
``sh
nix run .
``

And there is checks, you can also try it
``sh
nix flake check . #just to verify that config is not broken
``

And also you can just try it, there is no need to clone repo, just... for try...
``sh
nix run github:SofaaSogo-oh/nimoo
``

So... It's that simple!

**Add to the rest:**
Did you do everything you wanted to do? Congrats! And now let's add it to the base:

First of all... Lets add this to
``nix
....
inputs = {
    ....
    nixvim.url = "github:SofaaSogo-oh/nimoo"; # or your link
}
....
``

And then... We should add this cutie to the packages. Here is demonstration for the home manager:
``nix
{ .... nixvim, pkgs, ... }: {
    home.packages = with pkgs; [
        ....
        nixvim.packages.${pkgs.system}.default
    ];
}
``
And... That's all! For now...
