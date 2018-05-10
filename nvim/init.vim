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

call plug#end()
