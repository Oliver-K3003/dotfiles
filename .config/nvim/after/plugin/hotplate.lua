local hp = require('hotplate')
local ui = require('hotplate.ui')
vim.keymap.set('v', '<leader>ha', hp.addBP)
vim.keymap.set('n', '<leader>bp', ui.toggleFloat)
