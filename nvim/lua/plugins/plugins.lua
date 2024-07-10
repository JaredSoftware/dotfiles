-- lua/plugins.lua

return {
  -- Plugin para la gestión del LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp")
    end,
  },
  -- Plugin para autocompletado
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      require("config.cmp")
    end,
  },
  -- Plugin para gestionar instalación de LSPs
  {
    "williamboman/mason.nvim",
    config = function()
      require("config.mason")
    end,
  },
  -- Plugin para diagnósticos y formateo
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("config.null-ls")
    end,
  },
  -- Plugin impatient.nvim para mejorar el tiempo de carga
  {
    "lewis6991/impatient.nvim",
    config = function()
      require("impatient")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end,
  },
  -- Plugin vim-visual-multi para múltiples cursores
  {
    "mg979/vim-visual-multi",
    branch = "master",
  },
}
