local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- "low-level" shit
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })     -- syntax parser
Plug('nvim-lua/plenary.nvim')                                         -- some helper funcs; required
Plug('nvim-tree/nvim-web-devicons')                                   -- random icons
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' }) -- fzf for telescope
Plug('nvim-telescope/telescope.nvim')                                 -- navigate through shit

Plug('RRethy/vim-illuminate')                                         -- highlight symbol under cursor

-- UI --------------------------------------------
Plug('nvim-tree/nvim-tree.lua')   -- file tree
Plug('nvim-lualine/lualine.nvim') -- info line

-- EDITOR ----------------------------------------
Plug('tpope/vim-commentary') -- comment out code

-- GIT -------------------------------------------
Plug('lewis6991/gitsigns.nvim')
Plug('tpope/vim-fugitive')

-- LSP -------------------------------------------
Plug('mason-org/mason.nvim')           -- LSP server installer
Plug('mason-org/mason-lspconfig.nvim') -- mason <-> lspconfig bridge
Plug('neovim/nvim-lspconfig')          -- LSP configuration

-- COMPLETION ------------------------------------
Plug('hrsh7th/nvim-cmp')     -- completion engine
Plug('hrsh7th/cmp-nvim-lsp') -- LSP source for cmp
Plug('hrsh7th/cmp-buffer')   -- buffer words source
Plug('hrsh7th/cmp-path')     -- filesystem paths source

-- THEMES ----------------------------------------
Plug('sainnhe/everforest')
Plug('ellisonleao/gruvbox.nvim')

vim.call('plug#end')
