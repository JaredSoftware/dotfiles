-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("impatient")

-- Cargar plugins usando lazy.nvim
require("lazy").setup("plugins")

vim.g.VM_default_mappings = 0
