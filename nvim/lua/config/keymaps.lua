vim.keymap.set('i', 'jj', '<ESC>', { noremap = true })

vim.keymap.set({ "n", "x", "o" }, "H", "^",
  { noremap = true, silent = true, desc = "Map H to move to beginning of line" })

vim.keymap.set({ "n", "x", "o" }, "L", "$",
  { noremap = true, silent = true, desc = "Map L to move to end of line" })

vim.keymap.set("n", "qw", "<cmd>Bdelete<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "S", [["_diwP]], {
  noremap = true,
  silent = true,
  desc = "S to Replace word under cursor with last yanked text",
})

vim.keymap.set("", "<leader>p", [["0p]], {
  noremap = true,
  silent = true,
  desc = "Paste from yank register",
})

-- Normal mode: Ctrl+/ to toggle comment (gcc)
-- Visual mode: Ctrl+/ to toggle comment (gc)
vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = "Toggle comment line" })
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = "Toggle comment selection" })

