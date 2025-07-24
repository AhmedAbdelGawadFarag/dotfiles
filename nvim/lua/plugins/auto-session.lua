return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      log_level = "error",               -- reduce logging noise
      auto_session_enable_last_session = true, -- restore last session on startup
      auto_save_enabled = true,          -- auto save session on exit
      auto_restore_enabled = true,       -- auto restore session on Neovim start
      suppressed_dirs = { '~/', '~/Downloads', '/' },
      show_auto_restore_notif = true,
      auto_restore_notif_linger = 6000,  

      auto_restore_notif_fn = function(session_name)
	    require("notify")(
	      string.format("Restored session: %s", session_name),
	      "info",
	      { title = "auto-session", timeout = 2000 }
	    )
	  end
    }
  end
}
