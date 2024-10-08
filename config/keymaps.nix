{helpers, ...}: {
  # Set space as global leader key
  globals.mapleader = " ";
  extraConfigLua = ''
    -- Toogle diagnostics
    vim.g.diagnostics_visible = false
    function toggle_diagnostics()
      if vim.g.diagnostics_visible then
        vim.g.diagnostics_visible = false
        vim.diagnostic.disable()
      else
        vim.g.diagnostics_visible = true
        vim.diagnostic.enable()
      end
    end
  '';
  # Define keymaps
  keymaps = [
    {
      mode = "n";
      key = "<leader>;";
      action = "<CMD>:bprev<CR>";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>:";
      action = "<CMD>:bnext<CR>";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<CMD>Neogit<CR>";
      options = {
        silent = true;
        desc = "Open Neogit";
      };
    }
    # Telescope-related
    {
      mode = "n";
      action = "<CMD>Telescope projects<CR>";
      key = "<leader>pp";
      options = {
        silent = true;
        desc = "Browse projects";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope file_browser hidden=true<CR>";
      key = "<leader>.";
      options = {
        silent = true;
        desc = "Browse files in current directory";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope find_files hidden=true<CR>";
      key = "<leader><leader>";
      options = {
        silent = true;
        desc = "Browse files";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope git_files<CR>";
      key = "<leader>fg";
      options = {
        silent = true;
        desc = "Browse files tracked by git";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope oldfiles<CR>";
      key = "<leader>fr";
      options = {
        silent = true;
        desc = "Browse recent files";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope live_grep<CR>";
      key = "<leader>sp";
      options = {
        silent = true;
        desc = "Search for string in current working directory";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope grep_string<CR>";
      key = "<leader>ss";
      options = {
        silent = true;
        desc = "Search for the string under cursor";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope treesitter<CR>";
      key = "<leader>st";
      options = {
        silent = true;
        desc = "Treesitter";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope buffers<CR>";
      key = "<leader>bb";
      options = {
        silent = true;
        desc = "Browse buffers";
      };
    }
    {
      mode = "n";
      action = "<CMD>Telescope commands<CR>";
      key = "<C-p>";
      options = {
        silent = true;
        desc = "Open command palette";
      };
    }
    # Diagnostics
    {
      mode = "n";
      key = "<leader>de";
      action = ":lua vim.diagnostic.enable()<CR>";
      options = {
        silent = true;
        desc = "Enable Diganostics";
      };
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = ":lua vim.diagnostic.disable()<CR>";
      options = {
        silent = true;
        desc = "Disable Diganostics";
      };
    }
    # Toggles
    {
      mode = "n";
      key = "<leader>td";
      action = ":lua toggle_diagnostics()<CR>";
      options = {
        silent = true;
        desc = "Toggle Diganostics";
      };
    }
    {
      mode = "n";
      key = "<leader>tz";
      action = "<CMD>ZenMode<CR>";
      options = {
        silent = true;
        desc = "Toggle Zen";
      };
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = "<CMD>Neotree toggle<CR>";
      options = {
        silent = true;
        desc = "Toggle Neotree";
      };
    }
    # Save and exit
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
        desc = "Save and close window";
      };
    }
    {
      mode = "n";
      key = "<leader>qa";
      action = "<CMD>wqa!<CR>";
      options = {
        silent = true;
        desc = "Save and exit all windows";
      };
    }
    # Window management
    {
      mode = "n";
      key = "<leader>wv";
      action = "<CMD>:vsplit<CR>";
      options = {
        silent = true;
        desc = "Split vertically";
      };
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = "<CMD>:split<CR>";
      options = {
        silent = true;
        desc = "Split horizontally";
      };
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "<C-w>";
      options = {
        desc = "Windows";
      };
    }
    # Formatting
    {
      mode = "n";
      action.__raw = ''function() require('conform').format() end'';
      key = "<leader>cf";
      options = {
        silent = true;
        desc = "Apply formatter";
      };
    }
    {
      mode = "n";
      action.__raw = ''function() require('specs').show_specs() end'';
      key = "<leader>hh";
    }
    # Diagnostics / Trouble
    {
      mode = "n";
      key = "<leader>e";
      action.__raw = ''function() vim.diagnostic.open_float(0, {scope='line'}) end'';
      options = {
        silent = true;
        desc = "Show error properly";
      };
    }
  ];
}
