call plug#begin()
	Plug 'scottmckendry/cyberdream.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
	Plug 'windwp/nvim-autopairs'
	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'windwp/nvim-ts-autotag'
call plug#end()

silent! colorscheme cyberdream

set number relativenumber

set tabstop=4
set shiftwidth=4

lua << EOF

	require("nvim-treesitter.configs").setup {
		ensure_installed = {
			"lua", "vim", "vimdoc",
			"python", "javascript", "typescript",
			"c", "cpp", "json", "vue", "java",
		},

		sync_install = false,
		auto_install = true,

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},

		indent = {
			enable = true,
		},
	}
EOF

lua << EOF

	require("nvim-autopairs").setup {
		
	}
EOF

lua << EOF
	require("nvim-ts-autotag").setup ({
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false
		}
	})
EOF

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-r> :NERDTreeRefreshRoot<CR>
