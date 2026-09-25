local Plug = vim.fn['plug#']

vim.call('plug#begin')
	Plug('folke/tokyonight.nvim')

vim.call('plug#end')

vim.lsp.config['lua-server'] = {

    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
	root_dir = vim.fs.dirname(vim.fs.find({'.git', '.vim', 'nvim'}, { upward = true })[1]),
settings = { Lua = { diagnostics = { globals = {'vim'} } } },
}

vim.lsp.enable('lua-server')
vim.keymap.set('i', '<Tab>', function()

	if not vim.lsp.inline_completion.get()
		then
			return '<Tab>'
	end
end, { expr = true, desc = 'Accept the current inline completion' })

vim.lsp.inline_completion.enable()
vim.lsp.codelens.enable()

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.cmd.colorscheme "tokyonight-night"
