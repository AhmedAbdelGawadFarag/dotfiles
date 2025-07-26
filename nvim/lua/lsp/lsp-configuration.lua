require('mason-lspconfig').setup({
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {}
        end
    },
})


vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})

-- Hide "Undefined global variable" annoying warning.
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}}})
