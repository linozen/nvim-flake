{lib, ...}: {
  plugins = {
    cmp = {
      enable = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "buffer";}
          {name = "conventionalcommits";}
          {name = "emoji";}
          {name = "git";}
          {name = "luasnip";}
          {name = "nvim_lua";}
          {name = "path";}
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
        };
        snippet.expand = "luasnip";
      };
    };
    cmp-buffer.enable = true;
    cmp-clippy.enable = true;
    cmp-conventionalcommits.enable = true;
    cmp-dap.enable = true;
    cmp-dictionary.enable = true;
    cmp-emoji.enable = true;
    cmp-fuzzy-buffer.enable = true;
    cmp-fuzzy-path.enable = true;
    cmp-git.enable = true;
    cmp-look.enable = true;
    cmp-npm.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-path.enable = true;
    cmp-rg.enable = true;
    cmp-spell.enable = true;
    cmp-treesitter.enable = true;
    cmp_luasnip.enable = true;
  };
}
