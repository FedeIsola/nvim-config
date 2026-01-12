require'nvim-treesitter'.setup {
	-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
	install_dir = vim.fn.stdpath('data') .. '/site',
	auto_install = true,
	sync_install = false,
	highlight = {
		enable = true, 
		additional_vim_regex_highlighting = false,
	},
}

require'nvim-treesitter'.install { 
	'lua',
	'asm', 
	'c', 
	'json',
	'jsx',
	'ruby', 
	'javascript', 
	'typescript',
	'html', 
	'css'
}
