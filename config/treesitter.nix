{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
      languageRegister = {
        markdown = ["md" "mdx"];
      };
    };
    treesitter-context.enable = true;
    rainbow-delimiters.enable = true;
  };
  extraConfigLua = ''
    -- MDX support
    vim.filetype.add({
      extension = {
        mdx = 'markdown'
      }
    })
  '';
}
