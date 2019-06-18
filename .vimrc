set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'git@github.com:junegunn/fzf.vim.git'
Plugin 'git@github.com:junegunn/fzf.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:w0rp/ale.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:jiangmiao/auto-pairs.git' 
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:airblade/vim-gitgutter.git'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'git@github.com:wesQ3/vim-windowswap.git'
Plugin 'git@github.com:Vimjas/vim-python-pep8-indent.git'
Plugin 'git@github.com:tmhedberg/SimpylFold.git'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'

" ...
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Setup clipboard support
set clipboard=unnamedplus

" Ensure syntax highlighting
syntax on

" Split Settings go below or to the right
set splitbelow
set splitright

" Set line numbers
set number

" Tab/spacing settings
set expandtab  " Tab becomes spaces
set softtabstop=2 " When tab key is hit insert 2 spaces
set shiftwidth=2 " When indentation is filled in use 2 spaces
set tabstop=4 " Tab characters are interpreted as 4 spaces
" set smartindent

" Set line length guide (80 chars)
set colorcolumn=80
highlight ColorColumn ctermbg=8 " Solarized theme specific

" Let's get powerline
set rtp+=$VIM_POWER_BINDING

" Folding settings
set foldmethod=syntax "syntax highlighting items specify the folds
set foldcolumn=2 "defines 1 col at window left to indicate folding
set foldlevelstart=99 "start file with all folds open

" Vim-Javascript config
let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" Right solarized foreground colors and always show status bar
set laststatus=2
set background=dark

" Nerd tree config
nmap <C-\> :NERDTreeToggle<CR>

" Easy Split Movements
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab next and previous
map <a-PageUp> :tabn<CR>
map <a-PageDown> :tabp<CR>

" Ale specific config
let g:ale_linters ={
\  'python': ['flake8'],
\  'javascript': ['eslint'],
\  'typescript': ['tslint']
\}
let g:ale_fixers={
\   'javascript': ['eslint'],
\   'typescript': ['tslint']
\}

" You complete me settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_semantic_triggers = {
\  'python': ['re!\w{2}'],
\  'javascript': ['re!\w{2}'],
\  'typescript': ['re!\w{2}']
\}
let g:ycm_autoclose_preview_window_after_insertion = 1
