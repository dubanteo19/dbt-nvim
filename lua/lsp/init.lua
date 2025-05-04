local lspconfig = require("lspconfig")
lspconfig.ts_ls.setup(require("lsp.ts_ls"))
lspconfig.eslint.setup(require("lsp.eslint"))
lspconfig.lua_ls.setup(require("lsp.lua-lsp"))
