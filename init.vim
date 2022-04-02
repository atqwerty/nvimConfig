call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'prabirshrestha/vim-lsp'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()

syntax enable
autocmd vimenter * ++nested colorscheme gruvbox

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

inoremap jk <Esc>

noremap <silent> <Space><Space> :Files<CR>
noremap <silent> <Space>op :NERDTreeToggle<CR>

set number

set path-=./node_modules/**
set path-=node_modules/**
set path+=src/**
