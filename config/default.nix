{self, lib, ...}: {
  # Import all your configuration modules here
  imports = [
    ./autopairs.nix
    ./cmp.nix
    ./comment.nix
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
    ./snippets.nix
    ./visual.nix
    ./which-key.nix
  ];
}
