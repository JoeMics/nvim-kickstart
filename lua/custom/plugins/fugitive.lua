return {
  'tpope/vim-fugitive',
  config = function()
    -- keymaps
    vim.keymap.set('n', '<leader>gs', '<cmd>G<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gcr', '<cmd>Git commit<CR>', { desc = '[G]it [C]ommit with [M]essage' })
    vim.keymap.set('n', '<leader>gcm', '<cmd>Git commit --amend<CR>', { desc = '[G]it [C]ommit - [A]mmend' })
    vim.keymap.set('n', '<leader>gp', '<cmd>Git push<CR>', { desc = '[G]it [P]ush' })
  end,
}
