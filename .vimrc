#
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

set relativenumber

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of

" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'scrooloose/nerdtree'
" Plugin 'commentary.vim'
" Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line

" call vundle#end()            " required
filetype plugin indent on    " required

syntax on
"syntax enabled

"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd filetype python set expandtab

set autoindent
set backspace=indent,eol,start     "allow backspacing over everything in insert mode
set bg=dark
set copyindent    " copy the previous indentation on autoindenting
set cursorline
set encoding=utf-8
set expandtab
set foldmethod=indent " Enable folding
set foldlevel=99
set hidden
set history=10000         " remember more commands and search history
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set ignorecase    " ignore case when searching
set laststatus=2
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set modeline
set nobackup
set noerrorbells         " don't beep
set noswapfile
set nowrap
set number        " always show line numbers
set pastetoggle=<F3>
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase case-sensitive otherwise
set smartindent
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set title                " change the terminal's title
set fileformat=unix
set undolevels=10000      " use many muchos levels of undo
set visualbell           " don't beep
set wildignore=*.swp,*.bak,*.pyc,*.class

"set t_Co=256
"let g:solarized_termcolors=256

"set background=dark

"set background=light
"colors zenburn
"colorscheme solarized

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <F5> :NERDTreeToggle<CR>
cmap w!! w !sudo tee % >/dev/null
"nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <F6> :ls<CR>:buffer<Space>
nnoremap <space> za        " Enable folding with the spacebar
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta guibg=Red
    au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

let mapleader = ","

let python_highlight_all = 1
let g:ycm_autoclose_preview_window_after_completion = 1

