vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {'neoclide/coc.nvim', branch = 'release'}

    use
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'folke/tokyonight.nvim'
end)
