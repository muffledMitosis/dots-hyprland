vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.background = 'dark'

vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.pack.add({
	{
		src = 'https://github.com/nvim-treesitter/nvim-treesitter',
		version = 'master',
	},
	{
		src = 'https://github.com/rebelot/kanagawa.nvim.git',
		version = 'master',
	},
})

require('nvim-treesitter.configs').setup({
	ensure_installed = {
		'c',
		'lua',
		'typescript',
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})

require('kanagawa').setup({
	theme = 'wave',
})
vim.cmd('colorscheme kanagawa')

vim.lsp.enable('luals')
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('tsls')
