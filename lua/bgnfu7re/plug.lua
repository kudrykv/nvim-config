local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('Pocco81/auto-save.nvim')

-- file explorer, nice icons for it
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

-- theme
Plug('sainnhe/everforest')

-- split maximizer
Plug('szw/vim-maximizer')

-- surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug('tpope/vim-surround')

-- Smart and powerful comment plugin for neovim
Plug('numToStr/Comment.nvim')

-- status line and its icons
Plug('nvim-lualine/lualine.nvim')

-- git signs, such as added, modified, removed lines
Plug('lewis6991/gitsigns.nvim')

-- search for files and contents
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})
Plug('junegunn/fzf.vim')

-- shortcuts helper & documentation
Plug('folke/which-key.nvim')

-- github's copilot
Plug('github/copilot.vim')

Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = 'require("nvim-treesitter.install").update({ with_sync = true })()',
})

-- LSP monstrocity config
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('glepnir/lspsaga.nvim', { branch = 'main' })
Plug('onsails/lspkind.nvim')

-- autocompletion monstrocity stuff
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- snippets
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

vim.call('plug#end')

-- post-install setup plugins

require('bgnfu7re.plugins.auto-save')

require('bgnfu7re.plugins.nvim-tree')
require('bgnfu7re.plugins.comment-nvim')
require('bgnfu7re.plugins.lualine')
require('bgnfu7re.plugins.gitsigns')
require('bgnfu7re.plugins.which-key')
require('bgnfu7re.plugins.nvim-cmp')

require('bgnfu7re.plugins.treesitter-nvim')

require('bgnfu7re.plugins.lsp.mason')
require('bgnfu7re.plugins.lsp.lspsaga')
require('bgnfu7re.plugins.lsp.lspkind')
require('bgnfu7re.plugins.lsp.lspconfig')

