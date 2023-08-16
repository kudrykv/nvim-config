local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- file tree with nicer icons
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

-- help in setting up and looking up shortcuts
Plug('folke/which-key.nvim')

-- git highlights in the sign column
Plug('airblade/vim-gitgutter')

-- manage git
Plug('tpope/vim-fugitive')

Plug('nvim-lua/plenary.nvim') -- dependency for telescope
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- dependency for telescope
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.2' })

-- theme
Plug('sainnhe/everforest')

vim.call('plug#end')

-- setup plugins

require('bgnfu7re.plugconfig.nvim-tree')
require('bgnfu7re.plugconfig.git-gutter')
require('bgnfu7re.plugconfig.tree-sitter')
require('bgnfu7re.plugconfig.telescope')

-- setup after plugins were loaded

require('bgnfu7re.options.editor')
require('bgnfu7re.options.whichkey')

