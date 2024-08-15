{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
    extensions.file-browser.enable = true;
  };
  plugins.project-nvim = {
    enable = true;
    enableTelescope = true;
  };
}
