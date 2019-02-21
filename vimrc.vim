" VIMRC Main File
" VIMRC FILE

source $GLOBAL_SETTINGS_DIR/vimrc-files/settings.vim

if has("nvim")
  source $GLOBAL_SETTINGS_DIR/vimrc-files/plugin-setup.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/shortcuts.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/macro-functions.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/autocommands.vim

  set viminfo+=n~/.vim/viminfo
  " Run last
  highlight Search guifg=purple4 guibg=SeaGreen
  highlight MatchParen guifg=aquamarine3 guibg=bisque4 gui=bold
endif
