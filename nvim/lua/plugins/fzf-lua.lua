return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Live grep" },
      { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Buffers" },
      { "<C-e>", "<cmd>FzfLua oldfiles<CR>", desc = "Buffers" },
    },
    config = function()
      require("fzf-lua").setup({
        -- winopts, etc.
      })
    end,
  }
}
