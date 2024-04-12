return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    --[[ config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-jest' {
            jestCommand = 'npm test --',
            jestConfig = 'jest.config.js',
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          },
        },
      }
    end, ]]
  },
}
