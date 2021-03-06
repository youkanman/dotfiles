set runtimepath+=~/.vim/

" source ~/dotfiles/vim/.vimrc.bundle
" source ~/dotfiles/vim/.vimrc.nerdtree

set nocompatible               " be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

" originalrepos on github
" NeoBundle 'Shougo/neobundle.vim'
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'VimClojure'
" NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'scrooloose/syntastic'
" NeoBundle 'https://bitbucket.org/kovisoft/slimv'
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'bronson/vim-trailing-whitespace'
if neobundle#tap('vim-trailing-whitespace')
  " uniteでスペースが表示されるので、設定でOFFにします。
  let g:extra_whitespace_ignored_filetypes = ['unite']
endif

" NeoBundle 'vim-ruby/vim-ruby'
" NeoBundle 'tpope/vim-rails'
" コメントON/OFF
" NeoBundle 'tomtom/tcomment_vim'
" シングルクオートとダブルクオートの入れ替え等
" NeoBundle 'tpope/vim-surround'

" NeoBundle 'Rsense/neocomplete'
" NeoBundle 'Rubocop/syntastic'
" NeoBundle 'vim-ref/vim-ref-ri'
" NeoBundle 'ctags/vim-tags'
" NeoBundle 'tpope/vim-endwise'

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on
syntax on

" 行番号表示
set number
" タブ制御
set expandtab
set tabstop=2
set shiftwidth=2
" <DEL>補正
set backspace=indent,eol,start

" ファイルエンコード
" set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
" set fileformats=unix,dos,mac

" ファイル指定で開かれた場合はNERDTreeは表示しない
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif

