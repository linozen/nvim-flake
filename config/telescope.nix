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
        desc = "Find files tracked by git";
      };
      "<leader>ss" = {
        action = "live_grep";
	desc = "Search for string in current directory";
      };
      "<leader>fr" = {
        action = "buffers";
	desc = "List recently opened files";
      };
      "<M-S-p>" = {
        action = "commands";
	desc = "Command Palette";
      };
    };
    extensions.fzf-native = { enable = true; };
  };
}
