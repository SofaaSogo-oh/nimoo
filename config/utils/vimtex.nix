{pkgs, ...}: {
    plugins.vimtex = {
        enable = true;
        texlivePackage = null;
        settings = {
                # compiler_method = "latexrun";
                # compiler = "xelatex";
                compiler_latexmk = { 
                  options = [ "-shell-escape" ]; 
                };
                view_method = "zathura";
        };
        zathuraPackage = pkgs.zathura;
    };
}
