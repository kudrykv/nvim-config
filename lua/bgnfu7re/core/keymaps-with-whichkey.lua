local ok, wk = pcall(require, 'which-key')
if not ok then
  return
end

vim.g.mapleader = ' '

wk.register({
  {
    ['<C-p>'] = { '<CMD>lua vim.lsp.buf.signature_help()<CR>', 'Show Signature Help' },
    ['å'] = { '<CMD>ToggleBlameLine<CR>', 'Toggle Blame Line' },
  },

  {
    x = { '"_x', 'Remove one char w/o copying it' },
  },

  ['<leader>'] = {
    nh = { '<CMD>nohl<CR>', 'Remove Highlight' },

    e = {
      name = '+tree explorer',

      t = { '<cmd>:NvimTreeToggle<CR>', 'Toggle Nvim Tree' },
      r = { '<cmd>NvimTreeFindFile<CR>', 'Reveal File in Nvim Tree' },
    },

    w = {
      name = '+window split',

      v = { '<C-w>v', 'Split Vertically' },
      n = { '<C-w>n', 'Split horizontally' },
      ['='] = { '<C-w>=', 'Set Splits to have Equal Width' },
      c = { '<C-w>c', 'Close Current Split' },

      h = { '<C-w>h', 'Move to Left Split' },
      l = { '<C-w>l', 'Move to Right Split' },
      j = { '<C-w>j', 'Move to Bottom Split' },
      k = { '<C-w>k', 'Move to Top Split' },

      -- szw/vim-maximizer
      m = { '<CMD>MaximizerToggle<CR>', 'Maximize Current Split' },
    },

    f = {
      name = '+file',

      f = { '<cmd>Files<CR>', 'Find File' },
      r = { '<cmd>NvimTreeFindFile<CR>', 'Reveal File in Nvim Tree' },
    },

    o = {
      name = '+open',

      h = { '<CMD>History<CR>', 'Open History' },
      w = { '<CMD>Windows<CR>', 'Opened Windows' },
      b = { '<CMD>Telescope buffers<CR>', 'Opened Buffers' },
      t = { '<CMD>Telescope help_tags<CR>', 'Help Tags' },
    },

    s = {
      name = '+search or show',

      r = { '<CMD>Rg<CR>', 'Search in Files' },
      -- f = { '<cmd>Telescope find_files<CR>', 'Find File' },
      -- b = { '<cmd>Telescope buffers<CR>', 'Find Buffer' },
      -- h = { '<cmd>Telescope help_tags<CR>', 'Find Help' },
      -- m = { '<cmd>Telescope marks<CR>', 'Find Mark' },
      -- r = { '<cmd>Telescope oldfiles<CR>', 'Find Recent File' },
      -- s = { '<cmd>Telescope live_grep<CR>', 'Find String' },
      -- t = { '<cmd>Telescope tags<CR>', 'Find Tag' },

      p = { '<CMD>lua vim.lsp.buf.signature_help()<CR>', 'Show Signature Help' },
    },

    t = {
      name = '+tab',

      n = { '<CMD>tabnew<CR>', 'Open New Tab' },
      c = { '<CMD>tabclose<CR>', 'Close Current Tab' },
      h = { '<CMD>tabp<CR>', 'Previous Tab' },
      l = { '<CMD>tabn<CR>', 'Next Tab' },
    },

    i = {
      name = '+IDE-like',

      h = { '<CMD>lua vim.lsp.buf.hover()<CR>', 'Hover' },
      l = { '<CMD>lua vim.lsp.buf.format()<CR>', 'Format' },
      r = { '<CMD>lua vim.lsp.buf.references()<CR>', 'References' },
      a = { '<CMD>lua vim.lsp.buf.code_action()<CR>', 'Code Action' },
      i = { '<CMD>Lspsaga lsp_finder<CR>', 'LSP Finder' },
      -- p = { '<CMD>Lspsaga peek_definition<CR>', 'LSP Preview Definition' },
      -- g = { '<CMD>Lspsaga goto_definition<CR>', 'LSP Go to Definition' },
      -- a = { '<CMD>Lspsaga code_action<CR>', 'LSP Code Action' },
      -- r = { '<CMD>Lspsaga rename<CR>', 'LSP Rename' },
      -- R = { '<CMD>Lspsaga rename ++project<CR>', 'LSP Rename' },
      --
      -- s = {
      --   name = '+show',
      --
      --   d = { '<CMD>Lspsaga show_cursor_diagnostics ++unfocus<CR>', 'LSP Show Cursor Diagnostics' },
      --   D = { '<CMD>Lspsaga show_line_diagnostics ++unfocus<CR>', 'LSP Show Line Diagnostics' },
      --   o = { '<CMD>Lspsaga outline<CR>', 'LSP Outline' },
      --   q = { '<CMD>Lspsaga hover_doc<CR>', 'LSP Hover Doc' },
      -- },
      n = {
        name = '+navigate',

        i = { '<CMD>Lspsaga goto_definition<CR>', 'LSP Go to Implementation' },
      },
    },
  },
})
