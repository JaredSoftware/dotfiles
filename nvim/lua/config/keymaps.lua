-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--local discipline = require("jaredSoftware.discipline")
--discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--increment/decrement

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
--quit page

keymap.set("n", "<C-q>", ":q<Return>")

--delete a word a backward_list_gen

keymap.set("n", "dw", "vb_d")

-- select all

keymap.set("n", "<C-a>", "gg<S-v>G")

-- jumplist

keymap.set("n", "<C-m>", "<C-i>", opts)

-- new tab

keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- split window

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- move window
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")

--resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><rigth>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set("n", "zR", ':lua require"nvim-treesitter".foldexpr.set_fold_level(99)<CR>', { noremap = true })
keymap.set("n", "zM", ':lua require"nvim-treesitter".foldexpr.set_fold_level(0)<CR>', { noremap = true })

keymap.set("n", "<C-n>", ":VMultiCursor<CR>", { noremap = true, silent = true })
keymap.set("v", "<C-n>", ":VMultiCursor<CR>", { noremap = true, silent = true })
keymap.set("i", "<C-n>", "<Esc>:VMultiCursor<CR>", { noremap = true, silent = true })

--diagnostics

keymap.set("n", "<C-j>", function()
  vim.diagnostics.goto_next()
end, opts)
