-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "git@github.com:wbthomason/packer.nvim.git", install_path})
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]])
return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- maximizes and restores current window
    use({"szw/vim-maximizer"})

    -- use {
    --     'nvim-lualine/lualine.nvim',
    --     config = function()
    --       require('lualine').setup {}
    --     end,
    --     requires = {
    --         'nvim-tree/nvim-web-devicons',
    --         opt = true
    --     }
    -- }

    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }


    if packer_bootstrap then
        require("packer").sync()
    end
end)
