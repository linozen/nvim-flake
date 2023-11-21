{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
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
