return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
    vim.keymap.set('n', '<C-h>', '<C-w>h', {})
    vim.keymap.set('n', '<C-l>', '<C-w>l', {})
  end
}
