{self, ...}: {
  # Import all your configuration modules here
  imports = [
    ./autopairs.nix
    ./cmp.nix
    ./format.nix
    ./git.nix
    ./keymaps.nix
    ./lsp.nix
    ./markdown.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./visual.nix
  ];
}
