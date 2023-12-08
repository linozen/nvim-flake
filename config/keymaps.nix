{
  extraConfigLua = ''
    local diagnostics_active = true
    local toggle_diagnostics = function()
      diagnostics_active = not diagnostics_active
      if diagnostics_active then
        vim.diagnostic.show()
      else
        vim.diagnostic.hide()
      end
    end
  '';
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
    # Toggles
    {
      mode = "n";
      key = "<leader>td";
      action = "toggle_diagnostics";
      lua = true;
      options = {
        silent = true;
        desc = "Toggle Diganostics";
      };
    }
    {
      mode = "n";
      key = "<leader>ft";
      action = "<CMD>Neotree toggle<CR>";
      options = {
        silent = true;
        desc = "Toggle Neotree";
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
      mode = ["n" "i"];
      key = "<M-q>";
      action = "<CMD>wq<CR>";
      options = {
        silent = true;
        desc = "Exit and save";
      };
    }
    {
      mode = ["n" "i"];
      key = "<M-S-q>";
      action = "<CMD>wq!<CR>";
      options = {
        silent = true;
        desc = "Exit and save";
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
