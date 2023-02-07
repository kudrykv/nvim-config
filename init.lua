local opt = vim.opt

-- relative number
opt.rnu = true

opt.laststatus = 2
opt.ruler = true

opt.colorcolumn = "80"

-------------------------------------

require('bgnfu7re.plug')

require('bgnfu7re.core.options')
require('bgnfu7re.core.keymaps-with-whichkey')

