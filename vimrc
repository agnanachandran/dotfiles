set nocompatible " vi incompatible

filetype off " required for vundle

set encoding=utf-8
syntax on
set laststatus=2 " Always show status line
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
cd ~/Documents/projects " Auto change dir upon opening vim

" let Vundle (vim plugin manager) manage itself (required)
Plugin 'gmarik/Vundle'

filetype plugin indent on

" Plugins (delete line corresponding to a bundle and :BundleClean to uninstall)
Plugin 'flazz/vim-colorschemes'

" sets several common settings
Plugin 'tpope/vim-sensible'

" Ultisnips
Plugin 'SirVer/ultisnips.git'
" Snippets for ultisnips
Plugin 'honza/vim-snippets'
" Quick opening of files
Plugin 'kien/ctrlp.vim'
" Navigate the file system within vim
Plugin 'scrooloose/nerdtree'
" Make NERDTree better
Plugin 'jistr/vim-nerdtree-tabs'
" Faster travelling with <Leader><motion>
Plugin 'Lokaltog/vim-easymotion'
" Compile single files and display output and prompt for input within vim
Plugin 'xuhdev/SingleCompile'
" Colours (nested) brackets
Plugin 'kien/rainbow_parentheses.vim'
" Auto-complete for C/C++, python, etc.
Plugin 'Valloric/YouCompleteMe'
" For editing brackets, braces, etc.
Plugin 'tpope/vim-surround'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Haml/Sass stuff
Plugin 'tpope/vim-haml'
" Auto insert closing tags (e.g. HTML)
Plugin 'gregsexton/MatchTag'
" Shows indentation visually with `|` like symbol
Plugin 'Yggdroot/indentLine'
" Commenting
Plugin 'tomtom/tcomment_vim'
" Delimiters like ()[], are auto-inserted
Plugin 'Raimondi/delimitMate'
" Tagbar (for ctags)
Plugin 'majutsushi/tagbar'
" Ruby stuff
Plugin 'vim-ruby/vim-ruby'
" Rails stuff
Plugin 'tpope/vim-rails'
" Typescript syntax
Plugin 'leafgarland/typescript-vim'
" HTML5 and erb/eruby stuff
Plugin 'othree/html5.vim'
" Complete HTML and erb/eruby tags
Plugin 'tpope/vim-ragtag'
" Run :PowerlineClearCache after changing Powerline settings
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Better javascript highlighting, indentation
Bundle "pangloss/vim-javascript"

" Potentially good colorschemes:
" flatcolor
"
colorscheme molokai

set tabstop=4
set shiftwidth=4
" Set tabstop, shiftwidth, etc. to 2 for ruby, scss, etc.
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype sass setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2

"autocmd FileType make set ts=8 sw=8 sts=0 noexpandtab

" Don't autocomment next line if current line is a comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set autochdir " auto change directory to that of the file in buffer
set expandtab " tabs -> spaces
set ignorecase " Case-insensitive but sensitive if query contains any capital letters
set smartcase
set autoindent
set number " Add line numbers
set nobackup " No backup file generated
set noswapfile " No .swp file generated

set guicursor+=a:blinkon0
set guioptions-=r   "remove right-hand scroll bar
set guifont=Meslo\ LG\ S\ for\ Powerline:h16 " Set powerline specific font
set whichwrap=b,s,<,>,[,]
set scrolloff=4

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

" Make MacVim start at max height/width
set lines=999 columns=999

" only moves up/down one for wrapped lines
nnoremap k gk
nnoremap j gj

" insert line above or below
nnoremap <C-J> o<Esc>
nnoremap <C-K> O<Esc>

" insert line above or below
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" escape is too slow
inoremap jj <Esc>

" beginning/end of line
nmap gh ^
nmap gl $

nmap ; :

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
inoremap <C-space> <C-X><C-O>

" Remove trailing whitespace on all lines
nnoremap <silent> <Leader><Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Plugin configuration

" indentLine config
nmap <Leader><Leader>i :IndentLinesToggle<CR>
let g:indentLine_char = '┆'
let g:indentLine_enabled = 0   "don't use indentLine by default

" Rainbow delimiters
nmap <Leader><Leader>r :RainbowParenthesesToggleAll<CR>

" Tagbar
nnoremap <C-t> :TagbarToggle<CR><c-w><c-w>

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

" Compile LaTeX
nnoremap gt :! pdflatex %<CR>

" NERD tree (and tabs) config
nnoremap <c-n> :NERDTreeTabsToggle<CR>
nnoremap <c-f> :NERDTreeFind<cr>
let g:nerdtree_tabs_open_on_gui_startup = 0

" Map to leader (spacebar at the moment)
let g:EasyMotion_leader_key = '<leader>'

" YCM (YouCompleteMe) config
" Toggle syntax/diagnostics check

let g:ycm_show_diagnostics_ui = 0

function Enable_diagnostics_mode()
    let g:ycm_show_diagnostics_ui = 1
endfunction
nnoremap <C-s> :call Enable_diagnostics_mode()<CR>

let g:ycm_complete_in_comments = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion=['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']

let g:ycm_autoclose_preview_window_after_completion=1

" autocomplete (YouCompleteMe) highlight
highlight Pmenu guibg=brown guifg=white gui=bold

" Pressing enter after any sort of brackets/braces/etc. will put the end mark
" on a new line while putting cursor on an indented line in between.
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1

" When typing open bracket before a non-balanced closing bracket, don't auto-insert
" another closing bracket
let delimitMate_balance_matchpairs = 1

let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" Ultisnips config
let g:UltiSnipsExpandTrigger="<Tab>"
" JumpForward refers to going to the next placeholder
" when you've expanded a snippet that has multiple placeholders
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Set typescript syntax
au BufRead,BufNewFile *.ts set filetype=typescript
