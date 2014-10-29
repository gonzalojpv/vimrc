set nocompatible " usar Vim en lugar de Vi, requerido para que funcione el gestor
filetype off " requerido para que funcione el gestor

" lugar donde se encuentra el gestor de plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" o si no, pasar una ruta donde Vundle debería instalar Plugins
"call vundle#begin('~/some/path/here')

" Deja que Vundle se encargue de gestionar los plugins, requerido
Plugin 'gmarik/Vundle.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/AutoComplPop'
" Ejemplos de formatos de plugins soportados
" Mantén los comandos para Plugins dentro de vundle#begin/end.
" plugin GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin no GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos local (para crear tus propios plugins)
" Plugin 'file:///home/gmarik/path/to/plugin'
" el vim script sparkup está en un subdirectorio de un repo llamado vim
" pasa la ruta para asignar el runtimepath de forma correcta
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" evita un conflicto de nombre con L9
" Plugin 'user/L9', {'name': 'newL9'}

" MIS PLUGINS
" Navegador de archivos
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 1
" Una barra de estado muy chula, muestra los modos y se integra con vim-gitgutter
Plugin 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
set laststatus=2
Plugin 'airblade/vim-gitgutter'
highlight clear SignColumn " muestra barra a la izquierda con los cambios
" Colores para tmux
Plugin 'edkolev/tmuxline.vim'
" Plugin que integra Git con Vim

" Esquemas de colores
Plugin 'sickill/vim-monokai'
"colorscheme monokai
syntax enable
"set background=dark
"colorscheme solarized
colorscheme monokai 
Plugin 'tpope/vim-rails'

" Todos los plugins deben añadirse antes de aquí
call vundle#end() " requerido para que funcione el gestor
filetype plugin indent on " requerido para que funcione el gestor
" para ignorar los cambios en la indentación de plugins, usa:
"filetype plugin on
"
" Ayuda del gestor de plugins Vundle
" :PluginList - listar plugins
" :PluginInstall(!) - instalar o actualizar plugins
" :PluginSearch(!) foo - buscar foo
" :PluginClean(!) - confirmar la eliminación de plugins
"
" ejecuta :h vundle para más detalles
" Pon todo lo que no tenga que ver con Vundle después de aquí, por ejemplo:
set number " mostrar números de línea
set nocompatible                " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set showmatch
set cursorline
