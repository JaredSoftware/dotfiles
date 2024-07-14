-- lua/user/treesitter.lua
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "python", "javascript" }, -- Lista de lenguajes específicos
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

