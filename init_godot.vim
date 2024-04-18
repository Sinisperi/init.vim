set encoding=UTF-8
filetype plugin indent on

call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'habamax/vim-godot'

Plug 'lunacookies/vim-substrata/'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'rose-pine/neovim'

Plug 'shaunsingh/nord.nvim'
Plug 'AlexvZyl/nordic.nvim'
Plug 'Yazeed1s/oh-lucy.nvim'
Plug 'kvrohit/mellow.nvim'
Plug 'rebelot/heirline.nvim'

Plug 'rebelot/kanagawa.nvim'
Plug 'zootedb0t/citruszest.nvim'
Plug 'ramojus/mellifluous.nvim'
Plug 'kyazdani42/blue-moon'

call plug#end()

" ============ Genereal ==========
set smartcase
set noswapfile

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set smartindent
set smarttab
set backspace=indent,eol,start
set number
set relativenumber


nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <M-`> :bn<CR>
nnoremap H gT
nnoremap L gt


" ======== Godot ============
func! GodotSettings() abort
    nnoremap <buffer> <F4> :GodotRunLast<CR>
    nnoremap <buffer> <F5> :GodotRun<CR>
    nnoremap <buffer> <F6> :GodotRunCurrent<CR>
endfunc
augroup godot | au!
    au FileType gdscript call GodotSettings()
augroup end
" ===========================



" ======= NERDTree =======

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let NERDTreeIgnore=['.godot', '.import']

" =========================

" ====== CtrlP ======

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'scenes'
"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ===================

"color substrata

"color kanagawa
"color citruszest
"color rose-pine 
"color mellifluous
"color oh-lucy
"color aquarium
"color mellow
color catppuccin
" change the default dictionary mappings for file extension matches

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gd'] = '󰒓'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tscn'] = '󱜅'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['svg'] = '󰜡'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gdshader'] = ''


let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExtensionHighlightColor['gd'] = "689FB6"
let g:NERDTreeExtensionHighlightColor['gd'] = "905532"
let g:airline_powerline_fonts = 1
"hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='base16'
