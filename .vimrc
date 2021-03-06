set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set linebreak
set number
set mouse=a
set cursorline

filetype off " workaround filetype plugin issue
filetype plugin indent on
syntax enable

augroup filetype
  au! BufRead,BufNewFile *.ll   set filetype=llvm
  au! BufRead,BufNewFile *.ispc set filetype=ispc
  au! BufRead,BufNewFile *.td   set filetype=tablegen
  au! BufRead,BufNewFile *.s    set filetype=nasm
  au! BufRead,BufNewFile SCons* set filetype=scons
  au! BufRead,BufNewFile *.md set filetype=markdown
augroup END

set guifont="Droid Sans Mono 10"

map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>

" autocomplete
set completeopt=menu,menuone,longest
let g:SuperTabDefaultCompletionType='context'
let g:clang_use_library=1
let g:clang_library_path='/opt/llvm/lib/'
let g:clang_auto_select=1
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_close_preview=1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif " close the scratch window

map <F5> :!cd /home/blangmui/dev/ && ctags -R clang/include clang/lib llvm/include llvm/lib compiler-rt/lib/cilk
set tags=./tags,./TAGS,tags,TAGS,/home/blangmui/dev/tags
