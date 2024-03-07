-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  'BurntSushi/ripgrep',
  'windwp/nvim-ts-autotag',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  'nvim-treesitter/nvim-treesitter-context',
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },
  {
    'github/copilot.vim',
  },
  { 'catppuccin/nvim', name = 'catppuccino' },
  'prisma/vim-prisma',
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  'rebelot/kanagawa.nvim',
  'JoosepAlviste/palenightfall.nvim',
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000 },
}
