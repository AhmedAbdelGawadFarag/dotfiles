return {
    -- 1. Mason core (required for UI and CLI like :Mason)
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },

    -- 2. Mason LSP integration
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "clangd",
                    "ts_ls", -- typescript/javascript
                    "terraformls",
                    "jdtls",
                },
            })
        end,
        opts = {
            automatic_enable = {
                execlude = {
                    -- this must be done through jdtls plugin.
                    "jdtls",
                },
            },
        },
    },

    -- 3. Formatter / tool installer
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    -- Formatters
                    "stylua",
                    "prettier",
                    "black",
                    "shfmt",
                },
                auto_update = true,
                run_on_start = true,
            })
        end,
    },
}
