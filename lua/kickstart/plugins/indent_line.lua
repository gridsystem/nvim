return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      indent = {
        -- char = '│', -- character for spaces (soft indent)
        tab_char = '→', -- character specifically for tabs
        smart_indent_cap = false, -- when enabled, caps the number of indentation levels by looking at the surrounding code
      },
    },
  },
}
