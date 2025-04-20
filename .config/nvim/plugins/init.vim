call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'vimwiki/vimwiki'

call plug#end()

lua require("toggleterm").setup()

let g:indentLine_char_list = ['┊']

let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowLineNumbers = 0


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': 'md'}]
