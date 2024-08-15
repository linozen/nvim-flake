{pkgs, ...}: {
  config.clipboard.providers.wl-copy.enable = true;
  config.opts = {
    # Enable faster completion
    updatetime = 100;

    # Show relative line numbers
    number = true;
    relativenumber = true;

    # Integrate both Linux clipboards
    clipboard = "unnamedplus";

    # Adapt indentation
    autoindent = true;
    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    tabstop = 2;

    # Adapt search
    ignorecase = true;
    incsearch = true;
    smartcase = true;
    wildmode = "list:longest";

    # Dedicated sign column
    signcolumn = "yes";

    # Don't use a swapfile
    swapfile = false;

    # Use built-in persistent undo
    undofile = true;

    # Folding
    foldenable = true;
    foldmethod = "expr";
    foldexpr = "nvim_treesitter#foldexpr()";
    fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:";
    foldlevel = 99;
    foldcolumn = "1";
    foldlevelstart = 99;
  };
  config.globals = {
    vim_markdown_folding_disabled = 1;
  };
}
