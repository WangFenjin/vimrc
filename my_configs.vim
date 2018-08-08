let g:NERDTreeWinPos = "left"
map <leader>tt :TagbarToggle<cr>
set mouse=r
set clipboard=unnamed
set nu
set paste
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }

" set ttymouse=xterm " so vim doesn't hang inside screen and tmux 

set tags=tags;/
set wrap
filetype indent on
set autoindent
set cin
" set nosmartindent
inoremap # X<BS>#

set nofoldenable    " disable folding


set re=1
set nocursorline
set synmaxcol=128
let g:go_fmt_autosave = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }
let g:go_list_type = "quickfix"
set relativenumber

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
set updatetime=100

" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
set tabstop=4 shiftwidth=4 expandtab

" Don't forget set the airline theme as well.
let g:airline_theme = 'one'

" This line enables the true color support.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme onedark

" https://sunaku.github.io/vim-256color-bce.html
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
let g:lightline = {
    \ 'colorscheme': 'onedark',
\ }

tnoremap <Esc> <C-\><C-n>
