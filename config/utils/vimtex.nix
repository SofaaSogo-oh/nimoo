{
    plugins.vimtex = {
        enable = true;
        texlivePackage = null;
        settings = {
                compiler_method = "latexrun";
                compiler = "xelatex";
                compiler_latexmk_options = [ "-shell-escape" ];
                view_method = "zathura";
        };
    };
}
