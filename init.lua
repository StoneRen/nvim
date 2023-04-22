--[[
require("config.settings")
require("config.maps")
require("config.plugins")
--]]

require("stoneren.plugins-setup")
require("stoneren.core.options")
require("stoneren.core.keymaps")
require("stoneren.core.colorscheme")

require("stoneren.plugins.comment")
require("stoneren.plugins.nvim-tree")
require("stoneren.plugins.lualine")
require("stoneren.plugins.telescope")
require("stoneren.plugins.nvim-cmp")
require("stoneren.plugins.lsp.mason")
require("stoneren.plugins.lsp.lspsaga")
require("stoneren.plugins.lsp.lspconfig")
require("stoneren.plugins.lsp.null-ls")