{
  plugins = {
    conform-nvim = {
      enable = true;
      formattersByFt = {
        lua = ["stylua"];
        nix = ["alejandra"];
        # Conform will run multiple formatters sequentially
        python = ["isort" "black"];
        # Use a sub-list to run only the first available formatter
        json = [["prettierd" "prettier"]];
        javascript = [["prettierd" "prettier"]];
        javascriptreact = [["prettierd" "prettier"]];
        typescript = [["prettierd" "prettier"]];
        typescriptreact = [["prettierd" "prettier"]];
        html = [["prettierd" "prettier"]];
        css = [["prettierd" "prettier"]];
        markdown = [["prettierd" "prettier"]];
        # Use the "*" filetype to run formatters on all filetypes.
        "*" = ["codespell"];
        # Use the "_" filetype to run formatters on filetypes that don't
        # have other formatters configured.
        "_" = ["trim_whitespace"];
      };
    };
  };
}
