return {
    "mrjones2014/smart-splits.nvim",
    event = "VeryLazy",
    config = function()
        require("smart-splits").setup({
            -- optional settings
            resize_step_x = 2,
            resize_step_y = 2,
        })

        -- custom keymaps
        local ss = require("smart-splits")
        vim.keymap.set("n", "<C-Up>", ss.resize_up)
        vim.keymap.set("n", "<C-Down>", ss.resize_down)
        vim.keymap.set("n", "<C-Left>", ss.resize_left)
        vim.keymap.set("n", "<C-Right>", ss.resize_right)
    end,
}
