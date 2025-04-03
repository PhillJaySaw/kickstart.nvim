return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>h', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
    end,
  },
}
