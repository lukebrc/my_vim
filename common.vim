let mapleader=" "

set nocp
call pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug '~/.fzf'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'

Plug 'editorconfig/editorconfig-vim'
call plug#end()

set encoding=utf-8
set visualbell

set ts=4
set sw=4
set number
set relativenumber
set mouse=a
set cm=blowfish2
colorscheme desert
set guioptions-=T  "remove toolbar
"set guioptions-=m  "remove menu bar
set autoindent
set expandtab
set incsearch
map <C-n> :bn<cr>
map <C-p> :bp<cr>
map <C-e> :Bclose<cr>
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
imap jj <Esc>

map <c-w><c-a> :FZF<cr>
nnoremap <Leader>a :FZF<cr>

map gl $
map gh ^
map gj G
map gk gg

nnoremap yy yy"+yy

imap <C-f> <Right>
imap <C-b> <Left>
imap <C-e> <End>
imap <M-b> <Esc>bi
imap <M-f> <Esc>ni
imap <C-a> <Esc>^i
imap <C-k> <Esc>kki
" paste
imap <M-v> <Esc>"+pi
"imap <C-y> <Esc>"+pi
imap <M-f> <C-Right>
imap <M-b> <C-Left>

"autocmd VimEnter * NERDTree | wincmd p
map <C-h> :NERDTree<Cr>
nmap ,n :NERDTreeFind<Cr>
nmap ,m :NERDTreeToggle<Cr>

"nnoremap <Leader>g :Rsgrep <C-r><C-w><Cr>
"nnoremap <Leader>r :Rgrep <C-r><C-w><Cr>
nnoremap <Leader>e :b#<Cr>
nnoremap <Leader>f :Bsgrep
nnoremap <Leader>F :Grepper<Cr>
nnoremap <Leader>N :set nu<Cr>
nnoremap <Leader>n :set nonu<Cr>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>
nnoremap <Leader>w :w<Cr>
nnoremap <Leader>o <C-w><C-w><Cr>
nnoremap <Leader>* :Grepper -cword -noprompt<cr>
nnoremap <Leader># :Bsgrep <C-r><C-w><Cr>
nnoremap <Leader>b :b 
map <Leader>x <Esc>:!./%<Cr>

nnoremap <Leader>B :Buffers<Cr>
nnoremap <Leader>L :Lines<Cr>
nnoremap <Leader>h :e %:h
nnoremap <Leader>H :e %:h<Cr>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>l $
nnoremap <Leader>h ^
nnoremap <Leader>j <c-f>
nnoremap <Leader>J G
nnoremap <Leader>k <c-b>
nnoremap <Leader>K gg
" yank to clipboard
vnoremap <Leader>y :w !xclip -i -sel c<CR><CR>
vnoremap Y :w !xclip -i -sel c<CR><CR>
" paste from clipboard
vnoremap <Leader>p :w !xsel -b<CR><CR>
vnoremap <Leader>P :w !xsel -b<CR><CR>

map <Leader><Leader> V
nnoremap <Leader>8 *

" XML folding use shortcuts: za, zr or zM
augroup XML
autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

let g:xml_syntax_folding=1
" au FileType xml setlocal foldmethod=syntax

"zapisz plik jako sudo
cmap w!! %!sudo tee > /dev/null %

" kopiowanie/wklejanie
set clipboard=unnamedplus
map <C-y> "+y
map <c-w><C-p> "+p

vmap <Leader>' "ay
map <Leader>' "ayy<Cr>
nnoremap <Leader>, "ap<Cr>

" Wstawianie daty
map <Leader>D :put= strftime('%c')<Cr>kJi

" Buftabline
nmap <Leader>1 <Plug>BufTabLine.Go(1)
nmap <Leader>2 <Plug>BufTabLine.Go(2)
nmap <Leader>3 <Plug>BufTabLine.Go(3)
nmap <Leader>4 <Plug>BufTabLine.Go(4)
nmap <Leader>5 <Plug>BufTabLine.Go(5)
nmap <Leader>6 <Plug>BufTabLine.Go(6)
nmap <Leader>7 <Plug>BufTabLine.Go(7)
nmap <Leader>8 <Plug>BufTabLine.Go(8)
nmap <Leader>9 <Plug>BufTabLine.Go(9)
nmap <Leader>0 <Plug>BufTabLine.Go(10)
