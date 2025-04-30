-- Reload config

-- Helper to close windows that aren't text buffers (e.g. neo-tree)
function _G.CloseNonFileBuffers()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) then
      local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")
      local modifiable = vim.api.nvim_buf_get_option(bufnr, "modifiable")
      local name = vim.api.nvim_buf_get_name(bufnr)

      -- Close if it's not a real file buffer
      if buftype ~= "" or not modifiable or name == "" then
        pcall(vim.api.nvim_buf_delete, bufnr, { force = true })
      end
    end
  end
end

-- Function
function _G.ReloadConfig()
  vim.defer_fn(function()
    vim.cmd('redraw') -- Clear screen
    vim.cmd('echo "Press ENTER to store session and copy reopen command, or ESC to cancel..."')

    local key = vim.fn.getchar()

    -- Check if user pressed ENTER
    if key == 13 then -- 13 = ENTER
      local session_file = vim.fn.stdpath('data') .. "/nvim_session.vim"

      -- Close non-file buffers first
      CloseNonFileBuffers()

      -- Save all real file buffers
      vim.cmd('silent! wall')

      -- Save session cleanly
      vim.cmd('mksession! ' .. session_file)

      -- Copy reopen command to clipboard
      local reopen_cmd = "nvim -S " .. vim.fn.fnameescape(session_file)
      vim.fn.system("echo '" .. reopen_cmd .. "' | pbcopy")

      -- Clean quit
      vim.cmd('qa!')
    else
      -- ESC or anything else: just cancel
      vim.cmd('redraw')
      vim.cmd('echo "Session save cancelled."')
    end

  end, 100)
end

-- Actual command
vim.api.nvim_create_user_command('ReloadConfig', ReloadConfig, {})

-- Find any mappings for a key or combo
vim.api.nvim_create_user_command('ShowAllMaps', function(opts)
  local key = opts.args
  vim.cmd('verbose nmap ' .. key)
  vim.cmd('verbose imap ' .. key)
  vim.cmd('verbose vmap ' .. key)
  vim.cmd('verbose cmap ' .. key)
end, { nargs = 1 })

