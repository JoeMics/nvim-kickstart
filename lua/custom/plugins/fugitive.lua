return {
  'tpope/vim-fugitive',
  config = function()
    -- keymaps
    vim.keymap.set('n', '<leader>gs', '<cmd>G<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>', { desc = '[G]it [P]ush' })
  end,
}
