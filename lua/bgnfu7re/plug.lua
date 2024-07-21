local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- "low-level" shit
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })     -- syntax parser
Plug('nvim-lua/plenary.nvim')                                         -- some helper funcs
Plug('nvim-tree/nvim-web-devicons')                                   -- random icons
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' }) -- fzf for telescope
Plug('nvim-telescope/telescope.nvim')                                 -- navigate through shit

Plug('pocco81/auto-save.nvim')                                        -- automatically save files
Plug('RRethy/vim-illuminate')                                         -- highlight symbol under cursor
Plug('mfussenegger/nvim-lint')                                        -- client for linter backends
Plug('mhartington/formatter.nvim')                                    -- client for formatter backends
Plug('ThePrimeagen/refactoring.nvim')

-- LSP -------------------------------------------
-- Plug('folke/trouble.nvim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('nvimdev/lspsaga.nvim') -- some nice UI prettifiers

-- COMPLETION ------------------------------------
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- UI --------------------------------------------
Plug('nvim-tree/nvim-tree.lua')   -- file tree
Plug('nvim-lualine/lualine.nvim') -- info line

-- EDITOR ----------------------------------------
Plug('tpope/vim-commentary') -- comment out code

-- GIT -------------------------------------------
Plug('lewis6991/gitsigns.nvim')
Plug('tpope/vim-fugitive')

-- THEMES ----------------------------------------
Plug('sainnhe/everforest')
Plug('ellisonleao/gruvbox.nvim')

-- AI --------------------------------------------
Plug('github/copilot.vim') -- copilot

vim.call('plug#end')
