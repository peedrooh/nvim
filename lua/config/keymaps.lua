-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local conform = require("conform")

-- Specify formatters for each file type
conform.setup({
  formatters_by_ft = {
    c = { "clang_format" }, -- Use clang-format for .c files
    cpp = { "clang_format" }, -- Use clang-format for .cpp files
    -- Add other file types if needed
  },
  format_on_save = {
    timeout_ms = 500, -- Set a timeout for formatting (in ms)
    lsp_fallback = true, -- Fallback to LSP formatter if none specified
  },
})

vim.keymap.set()
