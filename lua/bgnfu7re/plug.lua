local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- dependency for Telescope
Plug('nvim-lua/plenary.nvim')

-- TEXT EDIT -------------------------------------
-- auto pairs
Plug('jiangmiao/auto-pairs')
-- automatic braces and quotes -- used previously
-- Plug('m4xshen/autoclose.nvim')

-- helper shortcuts for faster text surrounding (brackets, quotes, etc)
Plug('tpope/vim-surround')

-- commenter, because why do you need this out of the box, right?
Plug('tpope/vim-commentary')
--------------------------------------------------

-- UI --------------------------------------------
-- scrollbar
Plug('petertriho/nvim-scrollbar')

-- split maximizer
Plug('szw/vim-maximizer')

-- status line
Plug('nvim-lualine/lualine.nvim')

-- terminal
-- Plug('akinsho/nvim-toggleterm.lua') -- suggested by copilot
Plug('NvChad/nvterm')
--------------------------------------------------

-- FILE TREE --------------------------------------
-- file tree
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
--------------------------------------------------

-- GIT -------------------------------------------
-- git highlights in the sign column
Plug('lewis6991/gitsigns.nvim')

-- manage git
Plug('tpope/vim-fugitive')
--------------------------------------------------

-- SYNTAX TREE ------------------------------------
-- something for better highlights, and also LSP

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- dependency for telescope
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.2' })
--------------------------------------------------

-- LSP -------------------------------------------
-- LSP installer
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

-- LSP completion
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- snippets
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- UI fluff around LSP
Plug('nvimdev/lspsaga.nvim')
--------------------------------------------------

-- DAP -------------------------------------------
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')

Plug('leoluz/nvim-dap-go')
--------------------------------------------------

-- THEMES ----------------------------------------
Plug('sainnhe/everforest')
--------------------------------------------------

-- AI --------------------------------------------
-- copilot
Plug('github/copilot.vim')
--------------------------------------------------

vim.call('plug#end')
