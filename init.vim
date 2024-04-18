call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/nerdtree'
" JetBrainsMono Nerd Font Mono for icons to work
Plug 'ryanoasis/vim-devicons'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

lua <<EOF
require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "cpp"},
    highlight = { enable = true },
    indent = { enable = true }
}
EOF

set encoding=UTF-8

set number	
set linebreak	
set showbreak=+++	
set textwidth=100	
" set showmatch	
 
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set cindent	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4	
 
set undolevels=1000	
set backspace=indent,eol,start	

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" added thing
nnoremap <silent><C-n> :NERDTreeToggle<CR>
nmap <silent><c-g> :call CocActionAsync('jumpDefinition')<CR>

inoremap <expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
colorscheme catppuccin
