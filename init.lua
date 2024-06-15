
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("vim-options")
require("lazy").setup("plugins")

-- <leader>c open this configuration file
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<CR>')


-- sync system clipboard with vim clipboard
vim.opt.clipboard = "unnamedplus"

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true