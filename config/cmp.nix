{lib, ...}: {
  plugins = {
    nvim-cmp = {
      enable = true;
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
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-j>" = {
          action = "cmp.mapping.select_next_item()";
          modes = ["i" "s"];
        };
        "<C-k>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = ["i" "s"];
        };
      };
      snippet.expand = "luasnip";
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
