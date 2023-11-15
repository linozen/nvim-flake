{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<CMD>Neogit<CR>";
      options = {
        silent = true;
        desc = "Open Neogit";
      };
    }
    {
      mode = "n";
      key = "<leader>fs";
      action = "<CMD>w<CR>";
      options = {
        silent = true;
        desc = "Save buffer";
      };
    }
    {
      mode = "n";
      key = "<M-q>";
      action = "<CMD>bd<CR>";
      options = {
        silent = true;
        desc = "Exit buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>qa";
      action = "<CMD>wqa<CR>";
      options = {
        silent = true;
        desc = "Save and exit all";
      };
    }
    {
      mode = "n";
      lua = true;
      action = "function() require('conform').format() end";
      key = "<leader>cf";
    }
    {
      mode = "n";
      lua = true;
      action = "function() require('specs').show_specs() end";
      key = "<leader>hh";
    }
    {
      mode = "n";
      action = "<CMD>Telescope projects<CR>";
      key = "<leader>pp";
    }
    {
      mode = "n";
      action = "<CMD>Telescope file_browser<CR>";
      key = "<leader>pp";
    }
  ];
}
