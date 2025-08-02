return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Configuration options
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "python",
                "javascript",
                "typescript",
                "bash",
                "markdown",
                "java",
                "cpp",
                "sql",
                "json",
                "yaml",
                "terraform",
                "hcl",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = false,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
