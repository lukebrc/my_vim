" Vim filetype plugin file
" Language:	Java

set nu

map <leader>g :execute "/\\w\\+ " . expand("<cword>") . "("<Cr>
map <leader>G :execute "Bsgrep \\w\\+ " . expand("<cword>") . "("<Cr><Cr>

