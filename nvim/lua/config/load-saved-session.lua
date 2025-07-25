-- With This lua file you can load a specific session from the saved sessions 
-- When typing <leader> + fs using fzf

local function decode_session_name(encoded)
  -- URL-decode special characters used by auto-session
  return encoded:gsub('%%(%x%x)', function(hex)
    return string.char(tonumber(hex, 16))
  end):gsub("/$", "")
end

local function session_search()
  -- Safely get auto-session reference
  local ok, auto_session = pcall(require, 'auto-session')
  if not ok then
    vim.notify("Auto-session not found!", vim.log.levels.ERROR)
    return
  end

  -- Get session directory with fallback
  local session_dir = auto_session.dir or vim.fn.stdpath('data') .. '/sessions'
  
  -- Verify directory exists
  if vim.fn.isdirectory(session_dir) == 0 then
    vim.notify("Session directory missing: " .. session_dir, vim.log.levels.WARN)
    return
  end

  -- Get session files
  local session_files = vim.fn.glob(session_dir .. '/*.vim', true, true)
  
  -- Handle empty sessions
  if #session_files == 0 then
    vim.notify("No sessions found in: " .. session_dir, vim.log.levels.INFO)
    return
  end

  local sessions = {}

  for _, file in ipairs(session_files) do
    local encoded_name = vim.fn.fnamemodify(file, ':t:r')
    local display_name = decode_session_name(encoded_name)
    table.insert(sessions, display_name)
  end

  require('fzf-lua').fzf_exec(sessions, {
    prompt = ' Sessions❯ ',
    previewer = false,
    actions = {
      ['default'] = function(selected)
        if #selected > 0 then
          vim.cmd('SessionRestore ' .. selected[1])
        end
      end
    }
  })
end

vim.keymap.set('n', '<leader>fs', session_search, { desc = 'FZF Session Search' })

