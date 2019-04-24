" VIMRC Main File
" VIMRC FILE

source $GLOBAL_SETTINGS_DIR/vimrc-files/settings.vim

if has('nvim')
  source $GLOBAL_SETTINGS_DIR/vimrc-files/plugin-setup.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/shortcuts.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/macro-functions.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/autocommands.vim

  set viminfo+=n~/.vim/viminfo
  " Run last
  highlight Search guifg=orchid1 guibg=gray16
  highlight IncSearch guifg=slateblue4 guibg=orchid3 gui=bold
  highlight Substitute guifg=orchid1 guibg=gray16
  highlight MatchParen guifg=SpringGreen2 guibg=grey24 gui=bold
endif
