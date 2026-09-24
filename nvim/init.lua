local Plug = vim.fn['plug#']

vim.call('plug#begin')

vim.call('plug#end')

vim.lsp.config['lua-server'] = {

    cmd = { 'lua-language-server' },


    filetypes = { 'lua' },
}

vim.lsp.enable('lua-server')
vim.lsp.inline_completion.enable()

-- vim.keymap.set('SUPER', function() )

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
