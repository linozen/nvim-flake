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
  ];
}
