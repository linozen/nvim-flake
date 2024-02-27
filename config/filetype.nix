{
  extraConfigLua = ''
    -- MDX support
    vim.filetype.add({
      extension = {
        mdx = 'markdown'
      }
    })
    vim.filetype.add({
      extension = {
        jrnl = 'markdown'
      }
    })
  '';
}
