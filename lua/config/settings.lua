local global = vim.g
local o = vim.o
local cmd = vim.cmd


-- Map <leader> = the space key

global.mapleader = " "
global.maplocalleader = " "


-- from https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
-- Editor Options
o.encoding = "UTF-8"
o.number = true
-- o.relativenumber = true

o.swapfile = false
o.backup = false

o.ignorecase = true
o.smartcase = true

o.autochdir = true
o.clipboard = "unnamedplus"

-- 长文本换行
o.wrap = true
-- 保留虚拟行的缩进，只在启用wrap时可见
o.breakindent = true

o.autoindent = true
--o.cursorline = true

-- 是否将tab转换为空格
o.expandtab = true
-- Tab set to two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

o.ruler = true
o.mouse = "a"

-- When opening a window put it right or below the current one
vim.opt.splitright = true
vim.opt.splitbelow = true

o.wildmenu = true
o.showcmd = true

-- colorscheme
-- o.termguicolors = true
-- cmd.colorscheme('tokyonight-storm')
