return {
  {
    'sindrets/diffview.nvim',
    keys = {
      { '<leader>gc', '<cmd>set hidden<cr><cmd>DiffviewClose<cr><cmd>set nohidden<cr>' },
      { '<leader>gd', '<cmd>DiffviewOpen<cr>' },
    },
    config = function()
      require('diffview').setup {
        view = {
          merge_tool = {
            layout = 'diff3_mixed',
            disable_diagnostics = true, -- Temporarily disable diagnostics for diff buffers while in the view.
            winbar_info = true,
          },
        },
      }
    end,
  },
}
