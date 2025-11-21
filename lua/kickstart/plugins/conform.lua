-- Helper to find local prettierd in node_modules/.bin
local function find_local_prettierd(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  local buf_path = vim.api.nvim_buf_get_name(bufnr)
  if buf_path == '' then
    buf_path = vim.fn.getcwd()
  end

  local dir = vim.fn.fnamemodify(buf_path, ':p:h')
  local max_depth = 10
  local depth = 0

  while depth < max_depth do
    local local_bin = vim.fs.joinpath(dir, 'node_modules', '.bin', 'prettierd')
    if vim.fn.executable(local_bin) == 1 then
      return local_bin
    end

    local parent = vim.fs.dirname(dir)
    if parent == dir then
      break
    end
    dir = parent
    depth = depth + 1
  end

  return nil
end

return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters = {
        prettierd_local = {
          command = function(ctx)
            local bufnr = ctx.bufnr or vim.api.nvim_get_current_buf()
            return find_local_prettierd(bufnr) or 'prettierd'
          end,
          args = { '--stdin-filepath', '$FILENAME' },
          stdin = true,
        },
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        javascript = { 'prettierd_local' },
        javascriptreact = { 'prettierd_local' },
        typescript = { 'prettierd_local' },
        typescriptreact = { 'prettierd_local' },
        json = { 'prettierd_local' },
        jsonc = { 'prettierd_local' },
        css = { 'prettierd_local' },
        scss = { 'prettierd_local' },
        html = { 'prettierd_local' },
        markdown = { 'prettierd_local' },
        yaml = { 'prettierd_local' },
        toml = { 'prettierd_local' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
