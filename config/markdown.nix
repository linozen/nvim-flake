{pkgs, ...}: {
  # Currently, this very simple marksman-based config is sufficient
  extraPackages = [pkgs.marksman];
  extraConfigLua = ''
    require'lspconfig'.marksman.setup{}
  '';

  # Not needed right now
  # plugins.zk = {
  #   enable = true;
  #   picker = "telescope";
  #   lsp.autoAttach.filetypes = ["markdown" "mdx"];
  # };
  # plugins.mkdnflow = {
  #   enable = true;
  #   links.style = "wiki";
  #   filetypes = {
  #     md = true;
  #     rmd = true;
  #     qmd = true;
  #     markdown = true;
  #     mdx = true;
  #   };
  # };
}
