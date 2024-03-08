return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}

    -- keymaps
    vim.keymap.set('n', '<leader>tt', function()
      require('neo-tree.command').execute {
        reveal = true,
      }
    end, { desc = '[T]oggle [T]ree' })
  end,
}
