{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      nixd.enable = true;
      ruff-lsp.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
