{pkgs, ...}: {
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      nil-ls.enable = true;
      ruff-lsp.enable = true;
      tsserver.enable = true;
      tailwindcss.enable = true;
      yamlls.enable = true;
      ltex = {
        enable = true;
        settings = {
          language = "en-GB";
          dictionary = {
            "en-GB" = [
              "Exocortex"
              ":/home/lino/Exocortex/private/dict/en-US"
            ];
            "de-DE" = [
              "Exocortex"
              ":/home/lino/Exocortex/private/dict/de-DE"
            ];
          };
        };
      };
    };
    keymaps.lspBuf = {
      "ga" = "code_action";
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
  plugins.trouble.enable = true;
}
