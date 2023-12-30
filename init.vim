set encoding=UTF-8 
set splitbelow splitright
set number relativenumber
set shiftwidth=4 shiftround
set linebreak
set scrolloff=8 sidescrolloff=8
set wildmenu wildmode=longest:full,full
set cursorline
set backspace=indent,eol,start
set history=10000
set spell
set termguicolors
set ignorecase smartcase
set undofile
set undodir=~/.nvim/undodir// directory=~/.nvim/swap// backupdir=~/.nvim/backup//
set confirm
set updatetime=250

"Set leader key to SPACE key
let mapleader="\<space>"

"Source this config without having to close and reopen your session
nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>

"Open file explorer
nnoremap <leader>e :Explore<CR>

"Clear search highlighting
nnoremap <leader>c :noh<CR>

"Insert date-time
nnoremap <leader>t :r!date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>

"Vim window navigation shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"View open files
nmap <leader>f :files<CR>

"View command history
nmap <leader>h :history<CR>

"Edit this file
nmap <leader>ve :edit ~/.config/nvim/init.vim<CR>

"Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

"Maintain cursor position when yanking a visual selection
"vnoremap Y myy`y
"vnoremap Y myY`y

"When text is wrapped, move by terminal rows, unless a count is provided
noremap <expr> j (v:count == 0 ? "gj" : "j")
noremap <expr> k (v:count == 0 ? "gk" : "k")
noremap <expr> <Down> (v:count == 0 ? "gj" : "j")
noremap <expr> <Up> (v:count == 0 ? "gk" : "k")

"Easily insert a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>
"From non insert mode
noremap ;; <Esc>A;<Esc>
noremap ,, <Esc>A,<Esc>

"Duplicate current line from insert mode
imap <C-d> <Esc>0yyp<Up>
nmap <C-d> 0yyp<Up>

"Undo from insert mode
imap <C-z> <Esc>ui<Right>

"Delete current line from insert mode
imap DD <Esc>ddi<CR>

"Save from insert mode
imap <C-s> <Esc>:w<CR>

"Save from normal mode
nmap <C-s> :w<CR>

"Easy escape to normal mode
imap jj <Esc>

"Easily go to Insert mode and add a line break
nmap <leader>i A<Enter>

map gf :e <cfile><CR> 

"Resize window shortcuts
nmap <C-Up> :resize -2<CR> 
nmap <C-Down> :resize +2<CR> 
nmap <C-Left> :vertical resize -2<CR> 
nmap <C-Right> :vertical resize +2<CR> 

"Add a single character from normal mode
nnoremap <C-i> i_<Esc>r

"Plugins
"Plugin files stored in plugged folder
"Plugin config stored in plugins folder
call plug#begin('~/.config/nvim/plugged')
    source ~/.config/nvim/plugins/catppuccin.vim
   "source ~/.config/nvim/plugins/nightfly.vim
    source ~/.config/nvim/plugins/polyglot.vim
    source ~/.config/nvim/plugins/coc.vim
call plug#end()

colorscheme catppuccin "catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"let g:nightflyUnderlineMatchParen = v:true
"let g:nightflyWinSeparator = 2
"colorscheme nightfly

set background=dark
"set background=light

set termguicolors
hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
