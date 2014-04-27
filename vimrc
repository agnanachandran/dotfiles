" TODO: fix youcompleteme to autocomplete Java
set nocompatible " vi incompatible

filetype off " required for vundle

set encoding=utf-8
syntax on
set laststatus=2 " Always show status line
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
cd ~/Documents/projects " Auto change dir upon opening vim

" let Vundle (vim plugin manager) manage itself (required) 
Bundle 'gmarik/vundle'

filetype plugin indent on

" Bundles (delete line corresponding to a bundle and :BundleClean to uninstall)
Bundle 'flazz/vim-colorschemes'

" sets several common settings
Bundle 'tpope/vim-sensible'

" Ultisnips
Bundle 'SirVer/ultisnips.git'
" Syntax checking upon saving
Bundle 'scrooloose/syntastic'
" Quick opening of files
Bundle 'kien/ctrlp.vim'
" Navigate the file system within vim
Bundle 'scrooloose/nerdtree'
" Faster travelling with <Leader><motion>
Bundle 'Lokaltog/vim-easymotion'
" Compile single files and display output and prompt for input within vim
Bundle 'xuhdev/SingleCompile'
" Syntax highlights operators
Bundle 'Valloric/vim-operator-highlight'
" Colours brackets
Bundle 'kien/rainbow_parentheses.vim'
" Auto-complete for C/C++, python, etc.
Bundle 'Valloric/YouCompleteMe'
" For editing brackets, braces, etc.
Bundle 'tpope/vim-surround'
" Git wrapper
Bundle 'tpope/vim-fugitive'
" Haml/Sass stuff
Bundle 'tpope/vim-haml'
" Auto insert closing tags (e.g. HTML)
Bundle 'gregsexton/MatchTag'
" Shows indentation visually with `|` like symbol
Bundle 'Yggdroot/indentLine'
" Commenting
Bundle 'scrooloose/nerdcommenter'
" Delimiters like ()[], are auto-inserted
Bundle 'Raimondi/delimitMate'
" Tagbar (for ctags)
Bundle 'majutsushi/tagbar'
" Ruby stuffs
Bundle 'vim-ruby/vim-ruby'
" Rails stuffs
Bundle 'tpope/vim-rails'
" HTML5 and erb/eruby stuff
Bundle 'othree/html5.vim'
" Complete HTML and erb/eruby tags
Bundle 'tpope/vim-ragtag'
" Run :PowerlineClearCache after changing Powerline settings
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Customized SublimeText-like colourscheme
colorscheme cmolokai

set tabstop=4
set shiftwidth=4
" Set tabstop, shiftwidth, etc. to 2 for ruby, scss, etc.
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2

" Don't autocomment next line if current line is a comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set autochdir " auto change directory to that of the file in buffer
set expandtab " tabs -> spaces
set ignorecase " Case-insensitive but sensitive if query contains any capital letters
set smartcase
set autoindent
set smartindent
set cindent
set number " Add line numbers
set nobackup " No backup file generated
set noswapfile " No .swp file generated

set guioptions-=r   "remove right-hand scroll bar
set guifont=Meslo\ LG\ S\ for\ Powerline:h16 " Set powerline specific font
set whichwrap=b,s,<,>,[,] 

" Set leader to spacebar instead of '\'
let mapleader=" "

" Reindent entire file
nmap <c-i> mzgg=G`z

" Map Y to use the same conventions as C, D, etc. (i.e., copy till end of line)
map Y y$

set nf=octal,hex,alpha " (inc|dec)rement letters with C-a and C-x

" Enable spell checking for markdown files
au BufRead *.md setlocal spell
au BufRead *.markdown setlocal spell

nmap <c-q> :q!<CR>
nmap <c-s> :w!<CR>
imap <c-s> <Esc><c-s>a

" Copy and paste to system clipboard (seems to be unnecessary for MacVim)
" map gy "+y 
" map gp "+p

" Start from last position when opening a file
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" only moves up/down one for wrapped lines
nnoremap k gk
nnoremap j gj

" insert line above or below 
nnoremap <C-J> o<Esc>
nnoremap <C-K> O<Esc>

" escape is too slow
inoremap jj <Esc>

" beginning/end of line
nmap gh ^
nmap gl $

" map semicolon to colon
:nmap ; :

let g:lasttab = 1
nmap tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Tab shortcuts
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>
nnoremap tn :tabnew<CR>

" Autocomplete
inoremap <C-space> <C-n>

" Remove trailing whitespace on all lines
nnoremap <silent> <Leader><Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Plugin configuration

" indentLine config
nmap <Leader><Leader>i :IndentLinesToggle<CR>
let g:indentLine_char = '┆'
let g:indentLine_enabled = 0   "don't use indentLine by default

" Syntastic config
nmap <Leader><Leader>s :SyntasticToggleMode<CR>
let g:syntastic_enable_signs=0 " don't display on left bar
let g:syntastic_quiet_messages = {"level": "warnings"}
let g:syntastic_error_symbol = '✗'
let g:syntastic_mode_map = { 'mode': 'passive'}

" Rainbow delimiters
nmap <leader><leader>r :RainbowParenthesesToggleAll<CR>

" Tagbar
nnoremap <C-t> :TagbarToggle<CR>

" CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU' " most recently updated files are searched
let g:ctrlp_show_hidden = 1
" The regular CtrlP (all files everywhere) and index upon invocation
nmap <S-space> :CtrlP<CR>
nnoremap <leader>. :CtrlPTag<CR>

" Powerline options
let g:Powerline_symbols = 'fancy'

" Tell vim where to find ctags file
set tags=./tags,tags;

" SingleCompile config
nmap gr :SCCompileRun<CR>

" NERD tree config
nnoremap <c-n> :NERDTreeToggle<CR>

" Map to leader (spacebar at the moment)
let g:EasyMotion_leader_key = '<leader>'

" YCM config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_autoclose_preview_window_after_completion=1

" autocomplete (YouCompleteMe) highlight
highlight Pmenu guibg=brown guifg=white gui=bold

" Pressing enter after any sort of brackets/braces/etc. will put the end mark
" on a new line while putting cursor on an indented line in between.
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1

let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" Ultisnips config
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"

