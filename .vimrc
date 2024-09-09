call plug#begin('~/.vim/plugged')

" JavaScript syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'

" File system explorer
Plug 'scrooloose/nerdtree'

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ESLint integration
Plug 'dense-analysis/ale'

" Add a color scheme
Plug 'morhetz/gruvbox'

Plug 'tomlion/vim-solidity'
Plug 'tpope/vim-fugitive'


Plug 'dense-analysis/ale'  " Async Lint Engine
"Plug 'github/copilot.vim'  " AI-powered code completion (requires separate installation)
Plug 'lukas-reineke/indent-blankline.nvim'  " Indentation guides  
Plug 'tpope/vim-fugitive'


call plug#end()

" Basic settings
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
syntax on
set relativenumber
set cursorline
autocmd BufRead,BufNewFile *.sol set filetype=solidity









nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <Tab> and <S-Tab> for navigation in completion menu
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"


" Set color scheme
set background=dark
colorscheme gruvbox

" Key mappings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

" JavaScript specific settings
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab

" CoC extensions for JavaScript
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-eslint']

let g:coc_global_extensions = ['coc-solidity']

" ALE settings
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_linters = {
\   'solidity': ['solhint'],
\}
let g:ale_fixers = {
\   'solidity': ['prettier'],
\}

let g:ale_fix_on_save = 1


" Improve visibility of autocomplete menu
highlight Pmenu ctermfg=black ctermbg=lightgray guifg=#000000 guibg=#cccccc
highlight PmenuSel ctermfg=white ctermbg=darkblue guifg=#ffffff guibg=#0000ff
