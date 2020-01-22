""""""
" UI "
""""""

" show the filename in the window titlebar
set title

" set encoding
set encoding=utf-8

" directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backupf

" line numbers
set number

" remember last cursor position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal g`\"" |
	\ endif

" show '>   ' at the beginning of lines that are automatically wrapped
set showbreak=>\ \ \ 

" enable completion
set ofu=syntaxcomplete#Complete

"""""""""
" Theme "
"""""""""
"enable syntax highlighting
syntax enable

"background color
set background=dark

"""""""""""
" Plugins "
"""""""""""

"make sure plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"fzf (https://github.com/junegunn/fzf.vim)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"editorconfig (https://github.com/editorconfig/editorconfig-vim)
Plug 'editorconfig/editorconfig-vim'

"vim-multiple-cursors (https://github.com/terryma/vim-multiple-cursors)
Plug 'terryma/vim-multiple-cursors'

"NERDtree (https://github.com/scrooloose/nerdtree)
Plug 'vbundles/nerdtree'


map <D-p> :NERDTreeToggle<CR>

call plug#end()
