local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.cursorline = true
vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })
vim.api.nvim_set_keymap('n', 'Y', '"+y$', { noremap = true, silent = true })

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
