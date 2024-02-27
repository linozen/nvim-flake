{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
      folding = true;
      languageRegister = {
        markdown = ["md" "mdx"];
      };
    };
    treesitter-context.enable = true;
    rainbow-delimiters.enable = true;
  };
}
