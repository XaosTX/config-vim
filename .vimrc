" Load pathogen modules
execute pathogen#infect()
execute pathogen#helptags()

" Enable syntax highlighting
if has('syntax') && (&t_Co > 2 || has('win32'))
    syntax on 
endif

" GVIM- (here instead of .gvimrc)
if has('gui_running')
    set guioptions-=T " remove the toolbar
    set lines=40 " 40 lines of text instead of 24,
endif

" Color Scheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
"let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" ENVIRONMENT
set backspace=indent,eol,start " backspace for dummys
set showmatch " show matching brackets/parenthesis
set wildmenu
set wildmode=list:longest,full " comand <tab> completion, list matches and
" complete the longest common part, then,
" cycle through the matches

set shortmess+=filmnrxoOtT " abbrev. of messages (avoids 'hit enter')
set showmode " display the current mode
set spell " spell checking on

set nu " Line numbers on
set tabpagemax=15 " only show 15 tabs
filetype plugin indent on " Automatically detect file types.
set incsearch " find as you type search
set hlsearch " highlight search terms


" Formatting
set wrap " wrap long lines
set autoindent " indent at the same level of the previous line
set shiftwidth=4 " use indents of 4 spaces
set noexpandtab " tabs are tabs, not spaces
set matchpairs+=<:> " match, to be used with %
set pastetoggle=<f12> " pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks

"set foldenable " auto fold code
"set foldmethod=marker " type of folding

" CODING
setlocal omnifunc=syntaxcomplete#Complete " activate autocomplete (intellisense)
set cot+=menuone " show preview of function prototype

