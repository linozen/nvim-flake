{self, ...}: {
  # Import all your configuration modules here
  imports = [
    ./autopairs.nix
    ./cmp.nix
    ./format.nix
    ./git.nix
    ./gpt.nix
    ./keymaps.nix
    ./lsp.nix
    # ./markdown.nix
    ./options.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./surround.nix
    ./visual.nix
  ];
}
