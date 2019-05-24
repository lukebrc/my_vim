set nu
set expandtab
set ts=4
set sw=4

function! PythonSearchFun()
   execute "normal! mq"
   execute 'normal! ' . '"zyiw' . "\r"
   execute 'normal! ' . "/def\\s\\*" . @z . "\\s\*[({\\n]" . "\r"
endfunction

map <leader>f :execute "/def " . expand("<cword>") . "\\s\*[({\\n]"<Cr>
map <leader>F :execute "Bsgrep def " . expand("<cword>") . "\\s\*[({\\n}"<Cr><Cr>

map <leader>c :execute "/class " . expand("<cword>") . "\\s\*[({\\n]"<Cr>
map <leader>C :execute "Bsgrep class " . expand("<cword>") . "\\s\*[({\\n]"<Cr><Cr>

nnoremap <Leader>x :!python %<Cr>
