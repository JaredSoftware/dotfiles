-- lua/config/lsp.lua

local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup {}
nvim_lsp.pyright.setup {}
nvim_lsp.rust_analyzer.setup {}
