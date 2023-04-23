local bind = vim.keymap.set
local builtin = require('telescope.builtin')
bind('n', '<leader>ff', builtin.find_files, {})
bind('n', '<leader>fg', builtin.live_grep, {})
bind('n', '<leader>fb', builtin.buffers, {})
bind('n', '<leader>fh', builtin.help_tags, {})