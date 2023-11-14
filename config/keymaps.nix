{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<CMD>Neogit<CR>";
      options = {
        silent = true;
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
        desc = "Save and exit";
      };
    }
    {
      mode = "n";
      lua = true;
      action = " function() require('conform').format() end";
      key = "<leader>cf";
    }
  ];
}
