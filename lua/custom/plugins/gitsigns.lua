return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '█' },
        change = { text = '█' },
        delete = { text = '█' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      current_line_blame = false,
      on_attach = function()
        local gitsigns = require 'gitsigns'
        local map = function(mode, keys, func, desc)
          vim.keymap.set(mode, keys, func, { desc = 'Git signs: ' .. desc })
        end

        -- Actions
        map('n', '<leader>gr', gitsigns.reset_hunk, 'Reset hunk')
        map('v', '<leader>gr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, 'Reset hunk Visual')
        map('n', '<leader>gR', gitsigns.reset_buffer, 'Reset buffer')
        map('n', '<leader>gp', gitsigns.preview_hunk, 'Preview hunk')
        map('n', '<leader>gtb', gitsigns.toggle_current_line_blame, 'Toggle current line blame')
        map('n', '<leader>gtd', gitsigns.toggle_deleted, 'Toggle deleted')
        map('n', ']h', gitsigns.next_hunk, 'Next hunk')
        map('n', '[h', gitsigns.prev_hunk, 'Next hunk')
      end,
    },
  },
}
