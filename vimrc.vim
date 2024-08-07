" VIMRC Main File
" VIMRC FILE

source $GLOBAL_SETTINGS_DIR/vimrc-files/settings.vim

if has('nvim') && $USER != "root"
  source $GLOBAL_SETTINGS_DIR/vimrc-files/plugin-setup.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/coc-settings.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/macro-functions.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/shortcuts.vim
  source $GLOBAL_SETTINGS_DIR/vimrc-files/autocommands.vim

  " set viminfo+=n~/.vim/viminfo
endif
