local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

local ivy_theme = themes.get_ivy({
    previewer = false
})

require('telescope').setup{
  pickers = {
    live_grep = {
      theme = 'dropdown',
    }
  },
}

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>fb', function()
    return builtin.buffers(ivy_theme)
end, {})

vim.keymap.set('n', '<leader>ff', function()
    return builtin.find_files(ivy_theme)
end, {})
