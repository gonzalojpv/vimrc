set nocompatible " usar Vim en lugar de Vi, requerido para que funcione el gestor
filetype off " requerido para que funcione el gestor

" lugar donde se encuentra el gestor de plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" o si no, pasar una ruta donde Vundle debería instalar Plugins
"call vundle#begin('~/some/path/here')

" Deja que Vundle se encargue de gestionar los plugins, requerido
Plugin 'gmarik/Vundle.vim'
"""Plugin 'msanders/snipmate.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
""" ---
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-scripts/AutoComplPop'
""" Performance
Plugin 'Konfekt/FastFold'
""" Syntax file for JavaScript libraries
"Plugin 'othree/javascript-libraries-syntax.vim'

""" his plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces
Plugin 'Yggdroot/indentLine'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'itchyny/lightline.vim'
" Ejemplos de formatos de plugins soportados
" Mantén los comandos para Plugins dentro de vundle#begin/end.
" plugin GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/vim-gitbranch'
""" Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
" -- Web Development
Plugin 'Shutnik/jshint2.vim'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'valloric/MatchTagAlways'
""" Vim Syntax File for SCSS (Sassy CSS)
"Plugin 'cakebaker/scss-syntax.vim'
""" This is a vim plugin to highlight sass colors and color variables
Plugin 'ap/vim-css-color'
Plugin 'alvan/vim-closetag'
"
let g:nerdtree_tabs_open_on_console_startup = 1
" Una barra de estado muy chula, muestra los modos y se integra con vim-gitgutter
"Plugin 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'badwolf'
set laststatus=2
Plugin 'airblade/vim-gitgutter'
highlight clear SignColumn " muestra barra a la izquierda con los cambios
" Colores para tmux
"Plugin 'edkolev/tmuxline.vim'
" Esquemas de colores
Plugin 'chriskempson/base16-vim'
"Plugin 'ayu-theme/ayu-vim' " or other package manager'
"Plugin 'tpope/vim-rails'
""Plugin 'jwalton512/vim-blade'
Plugin 'sheerun/vim-polyglot'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'aradunovic/perun.vim'

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
" ejecuta :h vundle para más detalles
" Pon todo lo que no tenga que ver con Vundle después de aquí, por ejemplo:
" Colors {{{
syntax enable           " enable syntax processing
"colorscheme monokai
"colorscheme base16-tomorrow-night
set background=dark
colorscheme perun
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
""colorscheme base16-mocha
set termguicolors
"""  \ 'colorscheme': 'perun.vim',
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"set background=dark
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|node_modules/|venv/|target/|\.(o|swp|pyc|egg)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
""" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw          " redraw only when we need to.
set showmatch           " higlight matching parenthesis
inoremap () { {<CR>}<Esc>ko
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
set fillchars+=vert:┃
set guioptions=  """ scrollbar
"""" let g:indentLine_setColors = 0
set guifont=Hack:h12
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" " Spaces & Tabs {{{
set tabstop=2           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 4 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set backspace=indent,eol,start  " backspace through everything in insert mode
set nowrap                      " don't wrap lines
" }}}
set nocompatible                " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set cursorline

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

if !has('gui_running')
  set t_Co=256
endif

""" :NERDTreeToggle in insert mode on pressing C-e. While in normal mode there is no effect.
""" nmap means map in normal mode
""" imap means map in insert mode
map <C-n> :NERDTreeToggle<CR>
nnoremap <D-Bslash> :NERDTreeToggle<CR>
vnoremap <D-Bslash> :NERDTreeToggle<CR>
"inoremap <D-Bslash> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
"nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call <SID>ToggleNumber()<CR>
"nnoremap <leader><space> :noh<CR>
"nnoremap <leader>s :mksession<CR>
"""nnoremap <leader>a :Ag 
"nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
"nnoremap <leader>1 :set number!<CR>
" nnoremap <leader>d :GoDoc 
" nnoremap <leader>t :TestFile<CR>
"nnoremap <leader>r :call <SID>RunFile()<CR>
nnoremap <leader>b :call <SID>BuildFile()<CR>
"vnoremap <leader>y "+y

nnoremap <leader>f :CtrlP<CR>
"inoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
"inoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>T :CtrlPBufTag<CR>
"nnoremap <leader>t :CtrlPTag<CR>
"nnoremap <leader>F :CtrlPCurWD<CR>
"nnoremap <leader>M :CtrlPMRUFiles<CR>
"nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>l :CtrlPLine<CR>
" }}}

" Fix common typos
  :command WQ wq
  :command Wq wq
  :command W w
  :command Q q

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
autocmd BufReadPre *.vue let b:javascript_lib_use_vue = 1
autocmd BufReadPre *.js let b:javascript_lib_use_vue = 1

" run JSHint when a file with .js extension is saved
" this requires the jsHint2 plugin
autocmd BufWritePost *.js silent :JSHint
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
let g:polyglot_disabled = [ 'ansible', 'apiblueprint', 'applescript', 'arduino', 'asciidoc', 'autohotkey', 'c', 'caddyfile', 'carp', 'clojure', 'cmake', 'cql', 'cryptol', 'crystal', 'cucumber', 'dart', 'dockerfile', 'elixir', 'elm', 'emblem', 'erlang', 'fish', 'fsharp', 'glsl', 'gmpl', 'gnuplot', 'go', 'groovy', 'haml', 'haproxy', 'haskell', 'haxe', 'i3', 'jasmine', 'jenkins', 'julia', 'kotlin', 'latex', 'liquid', 'livescript', 'lua', 'mako', 'mathematica', 'nim', 'nix', 'objc', 'ocaml', 'octave', 'opencl', 'plantuml', 'powershell', 'protobuf', 'pug', 'puppet', 'purescript', 'qml', 'racket', 'ragel', 'raml', 'rspec', 'sbt', 'slim', 'slime', 'solidity', 'stylus', 'swift', 'sxhkd', 'systemd', 'terraform', 'textile', 'thrift', 'tomdoc', 'toml', 'vala', 'vbnet', 'vcl', 'vifm', 'vm', 'xls', 'yard' ]

""" Always highlight enclosing tags
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'vue' : 1,
    \ 'blade.php' : 1,
    \}

""" Konfekt/FastFold
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
