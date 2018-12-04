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
Plugin 'git@github.com:itchyny/lightline.vim.git'
Plugin 'git@github.com:junegunn/fzf.vim.git'
Plugin 'git@github.com:junegunn/fzf.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:w0rp/ale.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'git@github.com:pangloss/vim-javascript.git'
" Plugin 'git@github.com:terryma/vim-multiple-cursors.git' 
Plugin 'git@github.com:jiangmiao/auto-pairs.git' 
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:airblade/vim-gitgutter.git'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Split Settings
set splitbelow
set splitright

" Set line numbers
set number

" Tab/spacing settings
set expandtab  " Tab becomes spaces
set softtabstop=2 " When tab key is hit insert 2 spaces
set shiftwidth=2 " When indentation is filled in use 2 spaces
set smartindent

" Set line length guide (80 chars)
set colorcolumn=80
highlight ColorColumn ctermbg=10 " Solarized theme spcific

" Folding settings
"set foldmethod=syntax "syntax highlighting items specify the folds
set foldcolumn=2 "defineds 1 col at window left to indicate folding
set foldlevelstart=99 "start file with all folds open

" Vim-Javascript config
let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" Light rail config
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'solarized'
      \ }
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
