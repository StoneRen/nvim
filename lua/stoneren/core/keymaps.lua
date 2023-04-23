local global = vim.g
local bind = vim.keymap.set

-- Map <leader> to space
global.mapleader = ' '
global.maplocalleader = ' '

-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
--[[
vim.bind({mode}, {lhs}, {rhs}, {opts})

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

-- basic keymaps
bind("n", "<leader>w", ":w<CR>") -- save
bind("n", "<leader>q", ":q<CR>") -- quit
bind("n", "<leader>Q", ":qa!<CR>") -- quit all without saving
bind("n","<leader>te",":Texplore<CR>") -- new tab
bind("n", "<leader>h", ":nohl<CR>") -- clear search highlight



-- window management
bind("n", "<leader>sv", "<C-w>v") -- split window vertically
bind("n", "<leader>sh", "<C-w>s") -- split window horizontally
bind("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
bind("n", "<leader>sx", ":close<CR>") -- close current split window

-- bind("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- bind("n", "<leader>tx", ":tabclose<CR>") -- close current tab
bind("n", "<leader>tn", ":tabn<CR>") --  go to next tab
bind("n", "<leader>tp", ":tabp<CR>") --  go to previous tab