return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = false,
          auto_trigger = true,
          keymap = {
            accept = false,
            accept_line = false,
          },
        },
      }
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log wrapper
    },
    build = 'make tiktoken',
    opts = {
      debug = false, -- Enable debugging
      -- See Configuration section for rest
    },
    config = true,
  },
}
