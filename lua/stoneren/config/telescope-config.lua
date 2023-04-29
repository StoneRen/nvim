local telescope = require('telescope')
local acitons = require('telescope.actions')

telescope.setup {}

telescope.load_extension('fzf')

local bind = vim.keymap.set
local builtin = require('telescope.builtin')
bind('n', '<leader>ff', builtin.find_files, {})
bind('n', '<leader>fs', builtin.grep_string, {})
bind('n', '<leader>fg', builtin.live_grep, {})
bind('n', '<leader>fb', builtin.buffers, {})
bind('n', '<leader>fh', builtin.help_tags, {})

telescope.load_extension "file_browser"

bind('n', '<leader>e',":Telescope file_browser path=%:p:h select_buffer=true<CR>", {})
bind('n', '<leader>te',":tabnew | Telescope file_browser path=%:p:h select_buffer=true<CR>", {})

