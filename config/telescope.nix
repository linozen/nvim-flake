{
  plugins.project-nvim.enable = true;
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {enable = true;};
      project-nvim = {enable = true;};
      file_browser = {enable = true;};
    };
  };
}
