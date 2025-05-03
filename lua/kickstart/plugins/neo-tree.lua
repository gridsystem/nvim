-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    -- { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    -- Open neo-tree in the current local working directory (i.e. respect :lcd)
    -- Reveal
    -- {
    --   '<C-n>', 
    --   function()
    --     vim.cmd('Neotree filesystem reveal dir=' .. vim.fn.getcwd())
    --   end,
    --   desc = 'NeoTree reveal at local cwd', 
    --   silent = true
    -- },
    -- Toggle
    {
      '<C-n>', 
      function()
        vim.cmd('Neotree toggle filesystem reveal dir=' .. vim.fn.getcwd())
      end,
      desc = 'NeoTree reveal at local cwd', 
      silent = true
    },
    -- { '<C-n>', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },

  },
  opts = {
    -- Close Neo-tree if it is the last window left in the tab
    close_if_last_window = true,
    default_component_configs = {
      indent = {
        with_expanders = true,
      },
    },
    filesystem = {
      window = {
        position = 'right',
        mappings = {

          ['\\'] = 'close_window',

          -- Add mappings similar to Nerdtree

          -- Only necessary if using reveal instead of toggle
          -- ['<C-n>'] = 'close_window', -- Close neo-tree

          -- Basic open actions
          ['o'] = 'open', -- Open file or expand dir (like Nerdtree's `o`)
          ['l'] = 'open', -- (optional) Also allow `l` to open
          ['h'] = 'close_node', -- Close a directory
          ['<CR>'] = 'open', -- Enter to open

          -- Splits and tabs
          ['s'] = 'open_split', -- Open in horizontal split (Nerdtree style)
          ['v'] = 'open_vsplit', -- Open in vertical split
          ['t'] = 'open_tabnew', -- Open in a new tab

          -- File operations
          ['a'] = 'add', -- Create new file or folder
          ['d'] = 'delete', -- Delete file/folder
          ['r'] = 'rename', -- Rename file/folder
          ['x'] = 'cut_to_clipboard', -- Cut (for moving)
          ['c'] = 'copy_to_clipboard', -- Copy
          ['p'] = 'paste_from_clipboard', -- Paste

          -- Refresh
          ['R'] = 'refresh', -- Refresh tree

          -- Optional: go up a directory
          ['u'] = 'navigate_up', -- Go to parent directory
        },
      },
      hijack_netrw_behavior = "open_default",
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_gitignored = false,
      },
    },
    event_handlers = {
      {
        event = 'neo_tree_window_after_open',
        handler = function(_)
          vim.cmd('wincmd =')
        end
      },
    },
  },
}
