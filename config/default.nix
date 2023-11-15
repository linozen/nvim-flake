{self, ...}: {
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./format.nix
    ./git.nix
    ./keymaps.nix
    ./lsp.nix
    ./markdown.nix
    ./telescope.nix
    ./toggleterm.nix
    ./visual.nix
  ];
}
