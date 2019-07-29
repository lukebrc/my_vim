set ts=2
set sw=2
set softtabstop=2

function! ScalaSearchFun()
   execute "normal! mq"
   execute 'normal! ' . '"zyiw' . "\r"
   execute 'normal! ' . "/def\\s\\*" . @z . "\\s\*[({\\n]" . "\r"
endfunction

map <leader>f :execute "/def " . expand("<cword>") . "\\s\*[({\\n]"<Cr>
map <leader>F :execute "Bsgrep def " . expand("<cword>") . "\\s\*[({\\n}]"<Cr><Cr>

map <leader>c :execute "/\\(class\\\|object\\\|type\\) " . expand("<cword>") . "\\s\*[({\\n]"<Cr>
map <leader>C :execute "Bsgrep \\(class\\\|object\\\|type\\) " . expand("<cword>") . "\\s\*[({\\n]"<Cr><Cr>

map <leader>G :execute "Grepper -query '\\(def\\\|class\\\|object\\\|type\\) " . expand("<cword>") . "\\s\*[({\\n}=]'" <Cr>
map <leader>r :execute "Grepper -query '\\." . expand("<cword>") . "\\s\*[({\\n}]'" <Cr>
