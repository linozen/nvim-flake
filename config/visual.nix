{pkgs, ...}: {
  # # Buffer line on top
  # plugins.bufferline = {
  #   enable = true;
  # };
  # Startup screen
  plugins.startify = {
    enable = true;
    settings = {
      bookmarks = [
        "~/Documents/00-09 System/00 Index/00 Index.txt"
      ];
    };
  };
  plugins.nvim-colorizer = {
    enable = true;
  };
  # Status line on bottom
  plugins.lualine = {
    enable = true;
  };
  # Highlight word under cursor
  plugins.cursorline = {
    enable = true;
    cursorline.enable = false;
    cursorword.enable = true;
  };
  # Enable neotree
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    # Highlight cursor
    specs-nvim
    # Distraction-free writing
    zen-mode-nvim
    twilight-nvim
  ];
  extraConfigLua = ''
    -- Specs config
    require('specs').setup{
        show_jumps  = true,
        min_jump = 10,
        popup = {
            delay_ms = 0, -- delay before popup displays
            inc_ms = 5, -- time increments used for fade/resize effects
            blend = 0, -- starting blend, between 0-100 (fully transparent), see :h winblend
            width = 100,
            winhl = "PMenu",
            fader = require('specs').pulse_fader,
            resizer = require('specs').shrink_resizer,
        },
        ignore_filetypes = {},
        ignore_buftypes = {
            nofile = true,
        },
    }

    -- Zen mode config
    require('zen-mode').setup{
      window = {
        options = {
          foldcolumn = "0"
        }
      },
      on_open = function(win)
        vim.diagnostic.disable()
      end
    }

    -- Twilight config
    require('twilight').setup{
      treesitter = true
    }
  '';
}
