#!/bin/bash

install_gem()
{
  if gem which $1 > /dev/null 2>&1; then 
    echo "gem $1 installed"
    return
  fi
  echo "gem $1 is not installed, installing.."
  if [ -w $(gem environment gemdir) ] ; then
    gem install $1
  else
    sudo gem install $1
  fi
}

install_pry()
{
  install_gem 'pry' 
}

install_pry_theme()
{
  install_gem 'pry-theme' 
}

install_pry
install_pry_theme

wget https://github.com/david942j/ayu-dark.pry-theme/raw/master/ayu-dark.prytheme.rb -O $HOME/.pry/themes/ayu-dark.prytheme.rb

pryrc=$HOME/.pryrc
if ! grep -q ayu-dark "$pryrc"; then
  echo "Setting $pryrc.."
  echo -e "Pry.config.theme = 'ayu-dark'\nPry.config.theme_options = { paint_key_as_symbol: true }" >> $pryrc
fi
echo 'Install ayu-dark.pry-theme done!'
