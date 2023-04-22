local global = vim.g
local keymap = vim.keymap

-- Map <leader> = the space key
global.mapleader = " "
global.maplocalleader = " "


-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
--[[
vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

mode:
n: 普通模式
i: 插入模式
x：可视模式
s: 选择模式
v: 视觉+选择
t: 终端模式
o：操作员待定 
'': 一个空字符串。相当于 n + v + o

lhs: 绑定的快捷键
rhs: 执行的动作

opts: 设置
desc: 描述
remap: 布尔值，绑定键是否递归。默认值为false，建议不要启动
buffer: 可以是布尔值或数字。如果我们分配布尔值 true ，这意味着键绑定将只在当前文件中有效。如果我们分配一个数字，它需要是一个打开的缓冲区的“id”
silent: 布尔值，确定绑定键是否显示消息
expr: 通过vimscript或lua计算 {rhs} 的值
--]]

-- 在输入模式下，输入空格jk，自动转换为<esc>
-- 感觉很别扭
keymap.set('i', 'jk', '<esc>', { silent = true })
keymap.set('n','<leader>nh',':nohlsearch<cr>')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab


----------------------
-- Plugin Keybinds
----------------------


-- toggle split window maximization
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") 

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer