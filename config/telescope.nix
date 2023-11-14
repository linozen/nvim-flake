{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>." = {
        action = "find_files";
        desc = "Find files in current directory";
      };
      "<leader><leader>" = {
        action = "git_files";
        desc = "Find files in git";
      };
      "<leader>ss" = {
        action = "live_grep";
	desc = "Search forstring in current directory";
      };
    };
    extensions.fzf-native = { enable = true; };
  };
}
