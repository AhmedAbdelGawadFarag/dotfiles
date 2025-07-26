return {
{
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      timeout = 4000,
      background_colour = "#1a1b26",
      stages = "fade_in_slide_out",
      max_width = 70,
      max_height = 30, 
    })

    -- Override default vim.notify to use nvim-notify
    vim.notify = require("notify")
  end
}
}

