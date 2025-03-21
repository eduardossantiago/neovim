vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set({'i', 'n', 'v'}, '<C-C>', '<esc>', { desc = 'Make Ctrl+C behave exactly like escape(esc).' })


