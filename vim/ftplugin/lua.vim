set ts=2
set sw=2
set softtabstop=2
set nu

function! LuaSearchFun()
   execute "normal! mq"
   execute 'normal! ' . '"zyiw' . "\r"
   execute 'normal! ' . "/function\\s\\+\\([0-9a-zA-Z_\.]\*:\\)\\?" . @z . "\\s\*(" . "\r"
endfunction

"nnoremap <Leader>g "zyiw:exe "/function\\s\*\\([0-9a-zA-Z_\.]\*:\\)\\?".@z.""<Cr>
nnoremap <Leader>g :call LuaSearchFun()<Cr>
nnoremap <Leader>G "zyiw:exe "Bsgrep function\\s\*\\([0-9a-zA-Z_\.]\*:\\)\\?".@z.""<Cr>

nnoremap <Leader>R "zyiw:exe "Bsgrep ".@z.""<Cr>
nnoremap <Leader>r "zyiw<Cr>/[ .:]<C-r>z(<Cr>
