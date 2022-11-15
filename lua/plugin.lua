local status,packer = pcall(require,'packer')
if (not status) then end
vim.cmd [[packadd packer.nvim]]



packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'dracula/vim',as = 'dracula'}
    use {
         'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
 --   use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use {'neoclide/coc.nvim',branch = 'release'}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'glepnir/lspsaga.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use  'kyazdani42/nvim-tree.lua'
    use  {'nvim-telescope/telescope.nvim',tag='0.1.0'}
    use {'nvim-telescope/telescope-file-browser.nvim'}
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
    use 'nvim-lua/plenary.nvim'
    use {'akinsho/toggleterm.nvim',tag = 'v2.*'}
    use 'tpope/vim-fugitive'
end)
