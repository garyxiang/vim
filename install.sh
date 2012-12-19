# test
if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install amix's vimrc:"
  echo "   sh .vim_runtime/install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
echo '
fun! MySys()
   return "$1"
endfun
let $VIMRUNTIME="~/.vim_runtime/vimruntime"
set runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
helptags ~/.vim_runtime/doc' > ~/.vimrc
echo 'alias vi="~/vim_runtime/vim73"' >> ~/.bash_profile
echo "Installed amix's vim configuration successfully! Enjoy :)"
