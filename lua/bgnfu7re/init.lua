local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- file tree with nicer icons
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

-- help in setting up and looking up shortcuts
Plug('folke/which-key.nvim')

-- helper shortcuts for faster text surrounding (brackets, quotes, etc)
Plug('tpope/vim-surround')

-- commenter, because why do you need this out of the box, right?
Plug('tpope/vim-commentary')

-- automatic braces and quotes
Plug('m4xshen/autoclose.nvim')

-- scrollbar
Plug('petertriho/nvim-scrollbar')

-- split maximizer
Plug('szw/vim-maximizer')

-- git highlights in the sign column
Plug('lewis6991/gitsigns.nvim')

-- manage git
Plug('tpope/vim-fugitive')

Plug('nvim-lua/plenary.nvim') -- dependency for telescope
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- dependency for telescope
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.2' })

-- LSP
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- code action in popup -- delete? enough-ly covered with lspsaga?
Plug'weilbith/nvim-code-action-menu'

-- UI fluff around LSP
Plug('nvimdev/lspsaga.nvim')

-- DAP
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')

Plug('leoluz/nvim-dap-go')

-- COC
-- Plug('neoclide/coc.nvim', { branch = 'release' })

-- theme
Plug('sainnhe/everforest')

-- copilot
Plug('github/copilot.vim')

vim.call('plug#end')

-- setup plugins

require('bgnfu7re.plugconfig.nvim-tree')
require('bgnfu7re.plugconfig.gitsigns')
require('bgnfu7re.plugconfig.tree-sitter')
require('bgnfu7re.plugconfig.telescope')
require('bgnfu7re.plugconfig.code-action-menu')
require('bgnfu7re.plugconfig.autoclose')
require('bgnfu7re.plugconfig.scrollbar')
require('bgnfu7re.plugconfig.cmp')

require('bgnfu7re.lsp.mason')
require('bgnfu7re.lsp.saga')

require('bgnfu7re.dap.dapui')
require('bgnfu7re.dap.dap-go')

-- setup after plugins were loaded

require('bgnfu7re.options.editor')
require('bgnfu7re.options.whichkey')

