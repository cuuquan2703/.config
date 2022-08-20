local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    disgnostics =  "coc",
    offsets = {
    {
      filetype = "NvimTree",
      text = function()
        return vim.fn.getcwd()
      end,
      highlight = "Directory",
      text_align = "left"
    }
  }
  },
  highlights = {
    separator = {
      fg = '#2a2c37',
      bg = '#2a2c37',
    },
    separator_selected = {
      fg = '#2a2c37',
    },
    background = {
      fg = '#ffffff',
      bg = '#ffffff'
    },
    tab_selected = {
      fg = '#2a2c37',
      bold = true,
    },
    fill = {
      bg = '#2a2c37'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
