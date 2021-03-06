set number
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
filetype on
set backspace=2
set mouse=a

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" NERDTree
autocmd VimEnter * NERDTreeTabsOpen
autocmd BufNew * NERDTreeTabsOpen

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Enable filetype plugins
filetype plugin on
filetype indent on

" Ignore case when searching
set ignorecase

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Always compile less on save
function LessToCss()
    let current_file = shellescape(expand('%:p'))
    let filename = shellescape(expand('%:r'))
    let command = "silent !lessc " . current_file . " " . filename . ".css"
    execute command
endfunction
autocmd BufwritePost,FileWritePost *.less call LessToCss()

let mapleader=","

" Smart ident for python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Remove white spaces in the end of python files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

" Auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see
" all errors)
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Vundle
set nocompatible               " be iMproved

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

nnoremap <silent> <C-D> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

command! W :w

" Run pep8
let g:pep8_map='<leader>8'

set title
" don't bell or blink
set noerrorbells
set vb t_vb=

set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>
