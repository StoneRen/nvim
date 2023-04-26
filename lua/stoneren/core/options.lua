local opt = vim.opt

-- Editor Options
opt.encoding = "UTF-8"
opt.swapfile = false
opt.backup = false
opt.autochdir = true

-- line numbers
opt.number = true
opt.relativenumber = false

-- tabs & indentation
-- 是否将tab转换为空格
opt.expandtab = true
opt.autoindent = true
-- Tab set to two spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- line wrapping
-- 长文本换行
opt.wrap = true
-- 保留虚拟行的缩进，只在启用wrap时可见
opt.breakindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
if os.getenv('COLORTERM') == 'truecolor' or os.getenv('COLORTERM') == '24bit' then
  opt.termguicolors = true
end
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard = "unnamedplus"

-- When opening a window put it right or below the current one
vim.opt.splitright = true
vim.opt.splitbelow = true


-- 在遇到破折号的时候当成一个整体
opt.iskeyword:append("-")
