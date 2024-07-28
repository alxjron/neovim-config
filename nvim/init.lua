require("config.lazy")
require("config.lsp")

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.mat = 2
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.syntax = "on"
vim.opt.clipboard = "unnamedplus"

vim.cmd("let g:gruvbox_contrast_dark = 'hard'")
vim.cmd("let g:gruvbox_transparent_bg = '1'")
vim.cmd("let g:gruvbox_contrast_light = 'soft'")
vim.cmd.colorscheme("gruvbox")
