return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
    },
    config = function()
      require('toggleterm').setup {
        size = function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.3
          else
            return 20
          end
        end,
        open_mapping = [[<A-\>]],
        hide_numbers = true,
        direction = 'float',
        auto_scroll = true,
        border = 'curved',
        title_pos = 'center',
        insert_mappings = true,
      }
    end,
  },
}
