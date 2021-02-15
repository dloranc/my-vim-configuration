syntax on
filetype on
set laststatus=2
set colorcolumn=80
set number

call plug#begin('~/.vim/plugged')

Plug 'danilo-augusto/vim-afterglow'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-syntastic/syntastic'

call plug#end()

map <C-p> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme afterglow

set encoding=utf-8

" Squashing commits helpers
command! SquashCommits call feedkeys("ggjV}:s/pick/squash\<CR>:wq\<CR>", 'tx')
command! -nargs=1 NameSquashedCommit call feedkeys("/Please enter the commit message for<CR>kdggO\<Esc>xi<args>\<ESC>:wq\<CR>", 'tx')

