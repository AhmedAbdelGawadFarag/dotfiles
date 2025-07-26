vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP attachment notification",
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        vim.notify(string.format('LSP client "%s" attached to buffer %d', client.name, args.buf), vim.log.levels.INFO)
    end,
})
