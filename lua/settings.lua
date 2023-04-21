local global = vim.g
local o = vim.o


-- Map <leader> = the space key

global.mapleader = " "
global.maplocalleader = " "


-- from https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
-- Editor Options
o.encoding = "UTF-8"
o.number = true
-- o.relativenumber = true

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
o.shiftwidth = 2
o.tabstop = 2


o.ruler = true
o.mouse = "a"


o.wildmenu = true
o.showcmd = true

-- o.termguicolors = true
