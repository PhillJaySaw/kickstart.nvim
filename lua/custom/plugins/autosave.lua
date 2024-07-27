return {
  {
    'okuuva/auto-save.nvim',
    opts = {
      condition = function(buf)
        if vim.bo[buf].filetype == 'harpoon' then
          return false
        end
        return true
      end,
      noautocmd = true,
    },
    keys = {
      { '<leader>ww', ':ASToggle<CR>', desc = 'Toggle auto-save' },
    },
    -- trigger_events = function()
    --   local allowedFileTypes = { '*.js', '*.ts', '*.tsx', '*.jsx', '*.go', '*.mod', '*.css', '*.py', '*.php' }
    --   return {
    --     {
    --       immediate_save = { 'BufLeave', 'FocusLost', pattern = allowedFileTypes }, -- vim events that trigger an immediate save
    --       defer_save = { 'InsertLeave', 'TextChanged', pattern = allowedFileTypes }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
    --       cancel_defered_save = { 'InsertEnter', pattern = allowedFileTypes }, -- vim events that cancel a pending deferred save
    --     },
    --   }
    -- end,
  },
}
