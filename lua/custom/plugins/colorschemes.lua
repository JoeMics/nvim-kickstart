local transparent_enabled = false

local transparent_groups = {
  'Normal',
  'NormalNC',
  'NormalFloat',
  'NeoTreeNormal',
  'NeoTreeNormalNC',
}

local function load_colorscheme(colorscheme)
  vim.cmd.colorscheme(colorscheme)

  vim.cmd.hi 'Comment gui=none'

  if transparent_enabled then
    for _, group in ipairs(transparent_groups) do
      vim.api.nvim_set_hl(0, group, { bg = 'none' })
    end
  end
end

return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      load_colorscheme 'tokyonight-night'
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- load_colorscheme 'terafox'
    end,
  },
  -- unused, but I like them
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- load_colorscheme 'gruvbox'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      -- load_colorscheme 'catppuccin'
    end,
  },
}
