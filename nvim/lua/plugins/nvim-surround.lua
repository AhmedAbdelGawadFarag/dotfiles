-- type "sw" and ),",' to surround word
-- type "ds" and ),",' to desrruound word 

return {
    "kylechui/nvim-surround",
    version = "^3.0.0", 
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
keymaps = {
    normal = "s",
    visual = "S"
  }
        })
    end
}
