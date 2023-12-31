{pkgs, ...}: {
  # Colorscheme
  colorschemes.tokyonight = {
    enable = true;
    style = "night";
  };
  # # Buffer line on top
  # plugins.bufferline = {
  #   enable = true;
  # };
  # Startup screen
  plugins.startify = {
    customHeader = "";
    enable = true;
    bookmarks = [
      "~/Exocortex/pages/index.mdx"
    ];
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
  # Highlight cursor
  extraPlugins = with pkgs.vimPlugins; [
    specs-nvim
  ];
  extraConfigLua = ''
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
  '';
}
