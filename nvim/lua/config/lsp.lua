
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    -- Has to be in this list:
    -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
    ensure_installed = {
        "clangd",
        "lua_ls",
        "rnix",
        "rust_analyzer",
    },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({})
        end,
    }
})

local cmp = require("cmp")

cmp.setup({
    sources = {
        {name = "nvim_lsp"},
    },
})

