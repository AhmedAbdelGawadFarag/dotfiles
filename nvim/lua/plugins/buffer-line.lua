return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",
                    diagnostics = "nvim_lsp",
                    separator_style = "thin",
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "Explorer",
                            highlight = "Directory",
                            text_align = "left",
                        },
                    },
                },
            })
            vim.keymap.set("n", "<Leader>bh", "<Cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })
            vim.keymap.set("n", "<Leader>bl", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move buffer left" })
            vim.keymap.set("n", "<Leader>bl", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move buffer left" })
            vim.keymap.set("n", "<Tab>", "<Cmd>bnext<CR>", { desc = "Next buffer" })
            vim.keymap.set("n", "<S-Tab>", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

            vim.opt.laststatus = 3
            vim.opt.statusline = " "
            vim.opt.winbar = "%=%m %f"
        end,
    },
}
