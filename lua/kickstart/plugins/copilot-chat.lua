return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      auto_follow_cursor = false,
      mappings = {
        accept_diff = {
          -- specifically disable <C-y> which is mapped to accept diff by default
          -- I shouldn't need this in insert mode anyway
          insert = '',
        },
      }
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
