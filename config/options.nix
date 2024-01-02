{
  config.clipboard.providers.wl-copy.enable = true;
  config.options = {
    # Enable faster completion
    updatetime = 100;

    # Show relative line numbers
    number = true;
    relativenumber = true;

    # Integrate both Linux clipboards
    clipboard = "unnamed,unnamedplus";

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
  };
}
