{
  plugins.project-nvim.enable = true;
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
      "<leader>bi" = {
        action = "buffers";
        desc = "List open buffers";
      };
      "<leader>fr" = {
        action = "oldfiles";
        desc = "List recently openened files";
      };
      "<M-S-p>" = {
        action = "commands";
        desc = "Command Palette";
      };
    };
    extensions = {
      fzf-native = {enable = true;};
      project-nvim = {enable = true;};
      file_browser = {enable = true;};
    };
  };
}
