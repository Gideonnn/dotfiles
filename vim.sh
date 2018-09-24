# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create/update .vimrc with the following
cat > ~/.vimrc <<EOL
set nocompatible
filetype off

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on
EOL