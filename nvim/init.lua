-- The below line set the CWD to vim argument instead of root directory
-- Ex vim /dev/project ----> CWD will /dev/project
vim.cmd[[autocmd VimEnter * if argc() > 0 | execute 'cd' fnameescape(fnamemodify(argv()[0], ':p:h')) | endif]]

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.load-saved-session")

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
require("lazy").setup("plugins")

-- lsp configuration must be after loading plugins.
require("lsp.lsp-configuration")
