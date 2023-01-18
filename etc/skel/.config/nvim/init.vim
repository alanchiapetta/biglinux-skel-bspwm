"========== BÁSICO =========="

set linebreak
set background=dark
syntax on
set t_Co=256
set title
set ttimeoutlen=100
set wildmenu
set nocompatible
filetype plugin on
set smarttab
set cindent
set tabstop=2
set expandtab
set termguicolors
set nofoldenable
set foldlevel =99

"========== PLUGINS =========="

call plug#begin()

	"===== Produtividade ====="
        Plug 'preservim/vim-markdown'
        Plug 'godlygeek/tabular'

	"===== Aparência ====="
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ryanoasis/vim-devicons'
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

	"===== Formatação ====="
        "Plug 'jiangmiao/auto-pairs'
        Plug 'ap/vim-css-color'
        Plug 'preservim/vim-pencil'
        Plug 'junegunn/goyo.vim'
        Plug 'ellisonleao/glow.nvim'	

	"===== Outros ====="
        Plug 'mhinz/vim-startify'
        Plug 'ekickx/clipboard-image.nvim'

  "===== Pesquisa ====="        
        Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  
call plug#end()

"========== COLORSCHEME ========="

colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha"

"========== CONFIG. PLUGINS =========="


"=== VimMarkdown ==="
let g:text_conceal = ''
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0

"=== VimAirline ==="
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled =1
let g:airline_sextion_x = '%{PencilMode()}'
let g:airline_theme = 'catppuccin'

"=== Vim-Startify ==="
let g:startify_bookmarks = [
                \ { 'z': '~/.bashrc' },
                \ { 'v': '~/.config/nvim/init.vim' },
                \ { 'b': '~/.config/bspwm/bspwmrc' },
                \ { 'k': '~/.config/bspwm/sxhkdrc' },
                \ { 'p': '~/.config/bspwm/polybar/config.ini' },
                \ { 'a': '~/.config/bspwm/alacritty/alacritty.yml' },
                \ { 'p': '~/.config/bspwm/picom.conf' },
                \ ]

let g:startify_lists = [
                \ { 'header': ['  Favoritos'],  'type': 'bookmarks' },
                \ { 'header': ['  MRU'],  'type': 'files' },
                \ { 'header': ['  MRU '. getcwd()], 'type': 'dir' },
                \ ]

let g:startify_fortune_use_unicode = 1

let g:startify_custom_header = [
\'',
\'██████  ██  ██████      ██      ██ ███    ██ ██    ██ ██   ██', 
\'██   ██ ██ ██           ██      ██ ████   ██ ██    ██  ██ ██  ',
\'██████  ██ ██   ███     ██      ██ ██ ██  ██ ██    ██   ███   ',
\'██   ██ ██ ██    ██     ██      ██ ██  ██ ██ ██    ██  ██ ██  ',
\'██████  ██  ██████      ███████ ██ ██   ████  ██████  ██   ██ ',
\'',
\]
"========== ATALHOS =========="
"--- Gerais ---"
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w!<CR>
nnoremap <F4> :sp<CR>:terminal<CR>
nnoremap <C-m> :source %<CR> 
nnoremap <F2> :r !date<CR> "Insere a data e horas atuais

"--- Startify ---"
nnoremap <leader>hh  <cmd>Startify<CR>

"--- Telescope ---"
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

"========== OUTROS =========="
setlocal conceallevel=2
hi Conceal guibg=NONE
hi Normal guibg=NONE ctermbg=NONE


