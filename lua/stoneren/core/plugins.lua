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

    use {
        'echasnovski/mini.nvim',
        branch = 'stable',
        config = function()
            require('stoneren.config.mini-config')
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        config = function()
            require('stoneren.config.telescope-config')
        end,
        requires = {{'nvim-lua/plenary.nvim'}}
    }


    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    })

    -- autocompletion
    use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
    use("hrsh7th/cmp-buffer") -- source for text in buffer
    use("hrsh7th/cmp-path") -- source for file system paths
    -- snippets
    use("L3MON4D3/LuaSnip") -- snippet engine
    use("saadparwaiz1/cmp_luasnip") -- for autocompletion
    use("rafamadriz/friendly-snippets") -- useful snippets
    use({
        "hrsh7th/nvim-cmp",
        config = function()
            require("stoneren.config.amp-config")
        end
    }) -- completion plugin


    ---------
    -- Start
    ---------
    -- managing & installing lsp servers, linters & formatters
    -- formatting & linting
    use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
    use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
    -- in charge of managing lsp servers, linters & formatters
    use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

    -- configuring lsp servers
    use("neovim/nvim-lspconfig") -- easily configure language servers
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        requires = {{"nvim-tree/nvim-web-devicons"}, {"nvim-treesitter/nvim-treesitter"}}
    }) -- enhanced lsp uis
    use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
    use({
        "williamboman/mason.nvim",
        config = function()
            require("stoneren.config.mason-config").setup()
        end
    })
    ---------
    -- End
    ---------

    if packer_bootstrap then
        require("packer").sync()
    end
end)
