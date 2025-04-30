return {
  'nanozuki/tabby.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  -- event = 'VimEnter', -- if you want lazy load
  opts = {},
  config = function()

    local highlight = require('tabby.module.highlight')

    -- https://github.com/catppuccin/nvim/blob/5b5e3aef9ad7af84f463d17b5479f06b87d5c429/lua/catppuccin/groups/editor.lua#L63
    local hl_bg          = highlight.extract('TabLineFill')
    local hl_tab         = highlight.extract('Tabline')
    local hl_currenttab  = highlight.extract('TablineSel')

    local theme = {
      head = hl_bg,
      tab = { fg = hl_tab.fg, bg = hl_tab.bg },
      current_tab = { fg = hl_currenttab.fg, bg = hl_tab.fg },
      fill = hl_bg,
      tail = hl_bg,
    }

    local cwd = function()
      return ' ' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t') .. ' '
    end

    require('tabby.tabline').set(function(line)
      return {

        {
          { cwd(), hl = { fg = hl_tab.fg, hl_tab.bg } },
        },

        line.tabs().foreach(function(tab)

          local hl = tab.is_current() and theme.current_tab or theme.tab

          -- remove count of wins in tab with [n+] included in tab.name()
          local name = tab.name()
          local index = string.find(name, "%[%d")
          local tab_name = index and string.sub(name, 1, index - 1) or name

          -- indicate if any of buffers in tab have unsaved changes
          local modified = false
          local win_ids = require('tabby.module.api').get_tab_wins(tab.id)
          for _, win_id in ipairs(win_ids) do
            if pcall(vim.api.nvim_win_get_buf, win_id) then
              local bufid = vim.api.nvim_win_get_buf(win_id)
              if vim.api.nvim_buf_get_option(bufid, "modified") then
                modified = true
                break
              end
            end
          end

          return {
            hl = hl,
            line.sep('▟', hl, theme.fill),
            tab_name,
            modified and '' or '',
            line.sep('▛ ', hl, theme.fill),
            margin = ' ',
          }

        end),

      }
    end)

  end,

}
