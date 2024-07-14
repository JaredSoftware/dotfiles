-- lua/user/keymaps.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Ejemplo de mapeo de teclado: Abre NvimTree con <leader>e
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

