local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("utils.lsp").on_attach
local lspconfig = require("lspconfig")

require("servers.lua_ls")(lspconfig, capabilities, on_attach)
require("servers.ts_ls")(lspconfig, capabilities, on_attach)

require("lua.servers.efm-langserver")(lspconfig, capabilities, on_attach)
