return {
    "rmagatti/auto-session",
    dependencies = {
        "ibhagwan/fzf-lua",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("auto-session").setup({
            log_level = "error", -- reduce logging noise
            auto_save_enabled = true, -- auto save session on exit
            auto_restore = true, -- auto restore session on Neovim start
            show_auto_restore_notif = true,
            auto_restore_notif_linger = 6000,
            args_allow_single_directory = true,
            args_allow_files_auto_save = false,
            auto_restore_notif_fn = function(session_name)
                require("notify")(
                    string.format("Restored session: %s", session_name),
                    "info",
                    { title = "auto-session", timeout = 2000 }
                )
            end,
        })
    end,
}
