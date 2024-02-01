return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "olimorris/onedarkpro.nvim"

    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'nvim-treesitter/nvim-treesitter',
    }

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use "rafamadriz/friendly-snippets"

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use({
      "aurum77/live-server.nvim",
        run = function()
          require"live_server.util".install()
        end,
        cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    })
end)
