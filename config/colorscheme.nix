{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "github-nvim-theme";
      src = pkgs.fetchFromGitHub {
        owner = "projekt0n";
        repo = "github-nvim-theme";
        rev = "4f44a5c930372c85483d02700f332d34417e50b2";
        hash = "sha256-nnzVQNdvmiTPjpW5XkFpZjDYvWlALfSpQ7yZR/JaQNE=";
      };
    })
  ];
  colorscheme = "github_dark_dimmed";
}
