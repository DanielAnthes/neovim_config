" vim settings
set nocompatible
set termguicolors

filetype plugin indent on
syntax on
set scrolloff=8

" set key mappings for vim commands
imap jj <Esc>
let mapleader = " "
nnoremap <leader>pv :Explore<CR>
nnoremap <leader>h :noh<CR>

call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
Plug 'overcache/NeoSolarized'
Plug 'loctvl842/monokai-pro.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rose-pine/neovim'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'github/copilot.vim'
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'thaerkh/vim-indentguides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lervag/vimtex'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

nnoremap <Leader>c :IPythonCellExecuteCell<CR>
nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>
nnoremap <Leader>l :IPythonCellClear<CR>
nnoremap <Leader>x :IPythonCellClose<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

let g:black_use_virtualenv = 0
let g:rainbow_active = 0
let g:ipython_cell_cell_command = "%paste"
let g:python3_host_prog='/Users/daniel/miniconda3/envs/nvim/bin/python'
let g:slime_target = "tmux"
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1
let NERDTreeQuitOnOpen=1

" GUI options especially for neovide 
set guifont=Monaco:h14
let g:neovide_cursor_animation_length=0.02
let g:neovide_cursor_trail_length=0
let g:neovide_no_idle=v:false
let g:neovide_confirm_quit=v:true
let g:neovide_remember_window_size=v:true
let g:neovide_scroll_animation_length=0.15
let g:neovide_cursor_animate_command_line = v:false
let g:neovide_refresh_rate=60
let g:neovide_no_idle = v:true

set mouse=a
set cursorline
set nu " line numbers
set noerrorbells " no bells
set showmode " show current mode
set encoding=utf-8
set incsearch " show match while typing
set hlsearch " highlight matches
set tabstop=4 shiftwidth=4 expandtab  " fix tabs
set clipboard=unnamedplus " no multi clipboard fuckery
set splitbelow splitright " intuitive window splitting
set title " show file titles
set wildmenu
set linebreak
set ttyfast  " speedy scrolling

colorscheme NeoSolarized
