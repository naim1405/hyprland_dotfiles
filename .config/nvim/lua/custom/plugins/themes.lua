return {
  {
    'zaldih/themery.nvim',
    config = function()
      require('themery').setup {
        themes = {
          'ayu-dark',
          'ayu-mirage',
          'catppuccin-mocha',
          'catppuccin-frappe',
          'catppuccin-macchiato',
          'onedark_dark',
          'onedark_vivid',
          'sonokai',
          'tokyonight-moon',
          'tokyonight-night',
          'tokyonight-storm',
        }, -- Your list of installed colorschemes.
        livePreview = true, -- Apply theme while picking. Default to true.
      }
    end,
  },
  {
    'Shatur/neovim-ayu',
    priority = 1000, -- Ensure it loads first
    config = function()
      require('ayu').setup {
        mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      }
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000, -- Ensure it loads first
  },

  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
    end,
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- Ensure it loads first
  },
  {
    'catppuccin/nvim',
    priority = 1000,
  },
}
