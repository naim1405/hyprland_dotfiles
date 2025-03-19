return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        icon_pinned = '󰐃',
        buffer_close_icon = '✗',
        close_icon = '✗',
        left_trunc_marker = '',
        right_trunc_marker = '',
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        sort_by = 'insert_at_end',
        indicator = {
          style = 'underline',
        },
        separator_style = 'slope',
      },
    }
  end,
}
