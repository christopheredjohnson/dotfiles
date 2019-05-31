call functions#PlugLoad()

call plug#begin('~/.config/nvim/plugged')

" Appearance {{{

	" Tab Control
	set noexpandtab
	set smarttab
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set shiftround

    " toggle invisible characters
	set list
	set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
	set showbreak=↪

" }}}
" General Mapping: {{{
	let mapleader="\<Space>"
" }}}
" FZF: {{{
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	let g:fzf_layout = { 'down': '~25%' }

	if isdirectory(".git")
		" if in a git project, use :GFiles
		nmap <silent> <leader>p :GitFiles --cached --others --exclude-standard<cr>
	else
		" otherwise, use :FZF
		nmap <silent> <leader>p :FZF<cr>
	endif
" }}}



" THEME {{{
	Plug 'ayu-theme/ayu-vim'

	set termguicolors

	let ayucolor="mirage" " for mirage version of theme.
" }}}
call plug#end()

colorscheme ayu
