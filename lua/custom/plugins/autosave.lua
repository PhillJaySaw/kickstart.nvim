return {
  {
    'okuuva/auto-save.nvim',
    opts = {
      condition = function(buf)
        local buf = vim.api.nvim_get_current_buf()
        local buf_modified = vim.api.nvim_buf_get_option(buf, 'modified')

        if buf_modified then
          return true
        end

        return false
      end,
    },
  },
}
