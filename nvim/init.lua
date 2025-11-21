-- Install lazy vim first if not installed.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- The below line set the CWD to vim argument instead of root directory
-- Ex vim /dev/project ----> CWD will /dev/project
vim.cmd([[autocmd VimEnter * if argc() > 0 | execute 'cd' fnameescape(fnamemodify(argv()[0], ':p:h')) | endif]])

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.load-saved-session")

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
require("lazy").setup("plugins")

-- lsp configuration must be after loading plugins.
require("lsp.lsp-configuration")
