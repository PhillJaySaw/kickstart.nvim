return {
  -- MISC
  'BurntSushi/ripgrep',
  'windwp/nvim-ts-autotag',
  'nvim-treesitter/nvim-treesitter-context',
  'prisma/vim-prisma',
  'mattkubej/jest.nvim',
  --
  -- THEMES
  'rebelot/kanagawa.nvim',
  'JoosepAlviste/palenightfall.nvim',
  'decaycs/decay.nvim',
  'navarasu/onedark.nvim',
  'vim-test/vim-test',
  'tpope/vim-fugitive',
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    -- priotity = 1000,
    config = function()
      require('github-theme').setup {
        -- ...
      }

      -- vim.cmd 'colorscheme github_dark_default'
    end,
  },
  {
    'dmmulroy/ts-error-translator.nvim',
    config = true,
  },
  {
    'sindrets/diffview.nvim',
    keys = {
      { '<leader>gc', '<cmd>set hidden<cr><cmd>DiffviewClose<cr><cmd>set nohidden<cr>' },
      { '<leader>gd', '<cmd>DiffviewOpen<cr>' },
    },
  },
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000 },
  { 'catppuccin/nvim', name = 'catppuccino' },
  --
  -- PLUGINS
  { 'nvim-telescope/telescope-file-browser.nvim', dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' } },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      'nvim-telescope/telescope.nvim',
    },
    config = true,
  },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  { 'dmmulroy/tsc.nvim', config = true },
}
