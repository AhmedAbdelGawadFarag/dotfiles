return {
{
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      timeout = 3000,
      background_colour = "#1a1b26",
      stages = "fade_in_slide_out",
      max_width = 50,
      render = "compact"
    })

    -- Override default vim.notify to use nvim-notify
    vim.notify = require("notify")
  end
}
}

