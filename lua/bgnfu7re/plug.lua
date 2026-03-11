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

-- THEMES ----------------------------------------
Plug('sainnhe/everforest')
Plug('ellisonleao/gruvbox.nvim')

vim.call('plug#end')
