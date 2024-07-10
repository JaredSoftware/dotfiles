-- lua/config/treesitter.lua
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "javascript",
    "json",
    "lua",
    "python",
    "rust",
    "typescript",
    "html",
    "css", -- Agrega los lenguajes que necesites
  },
  highlight = {
    enable = true, -- Habilitar resaltar sintaxis
  },
  indent = {
    enable = true, -- Habilitar indentación basada en la sintaxis
  },
  -- Configuración de plegado
  fold = {
    enable = true,
    disable = {}, -- Lista de lenguajes donde deshabilitar el plegado
  },
})

-- Configuración de opciones de plegado
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
