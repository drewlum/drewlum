"Vim-Plug setup {{{ 
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -kfLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  let g:plug_shallow = 'true'
  "let $GIT_SSL_NO_VERIFY = 'true'

  call plug#begin()
 
  Plug 'mileszs/ack.vim'
"  Plug 'DirDiff.vim'
  Plug 'derekwyatt/vim-fswitch'
"  Plug 'LargeFile'
  Plug 'sjl/splice.vim'
  Plug 'scrooloose/syntastic'
  Plug 'scrooloose/nerdtree'
  Plug 'godlygeek/tabular'
  Plug 'altercation/vim-colors-solarized'
  Plug 'bling/vim-airline'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'derekwyatt/vim-fswitch'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'easymotion/vim-easymotion'
  Plug 'elzr/vim-json'
  Plug 'godlygeek/tabular'
  Plug 'hynek/vim-python-pep8-indent'
  Plug 'kana/vim-operator-user'
  Plug 'mileszs/ack.vim'
  Plug 'rhysd/vim-clang-format'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'sjl/splice.vim'
  Plug 'suan/vim-instant-markdown'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-capslock'
  Plug 'tpope/vim-characterize'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-jdaddy'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-tbone'
  Plug 'tpope/vim-tbone'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-vinegar'
  Plug 'yaroot/vissort'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'suan/vim-instant-markdown'
  Plug 'rhysd/vim-clang-format'
  Plug 'Rykka/riv.vim'
"  Plug 'XML-Folding'

  "function! BuildYCM(info)
  "  " info is a dictionary with 3 fields
  "  " - name:   name of the plugin
  "  " - status: 'installed', 'updated', or 'unchanged'
  "  " - force:  set on PlugInstall! or PlugUpdate!
  "  if a:info.status == 'installed' || a:info.force
  "    !./install.py --clang-completer
  "  endif
  "endfunction

  "Plug 'Valloric/YouCompleteMe', {'for': 'cpp', 'do': function('BuildYCM')}
  "autocmd! User YouCompleteMe call youcompleteme#Enable()

  call plug#end()
"}}}
