#!/bin/bash
function node() {
  sudo apt-get install wget
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash

  source ~/.profile

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

  nvm ls-remote
  nvm install node

}

function homebrew() {
  sudo apt install build-essential
  dnf groups mark install "Development Tools"
  dnf groupinstall "Development Tools"

  which make
  curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
  /bin/bash install.sh

  brew doctor
}

function zsh() {

  sudo apt-get install zsh
  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

  echo -e "Então você precisa habilitá-lo, altere o valor de ZSH_THEME para o seguinte no ~/.zshrc arquivo: \n"

  echo -e "ZSH_THEME="powerlevel10k/powerlevel10k" \n "

  echo -e "reinicie o terminal \n"

  echo -e "p10k configure"

  git clone https://github.com/ohmyzsh/ohmyzsh.git

  echo -e "entre no arquivo  cd  ~/.zshrc \n "

  echo -e "Coloque no plugins a seguite configuração \n"

  echo -e "plugins=(
    alias-finder
    ansible
    asdf
    bgnotify
    bundler
    catimg
    command-not-found
    copyfile
    dircycle
    docker
    docker-compose
    docker-machine
    extract
    git
    git-prompt
    git-fast
    gitignore
    heroku
    jsontools
    jump
    rails
    ruby
    singlechar
    sprunge
 #  sudo
    thefuck
    transfer
    web-search
    zsh_reload
    fzf
    zsh-interactive-cd
)"
}
if [ "$(date +%k)" -ge 6 -a "$(date +%k)" -le 11 ]; then
  figlet -cf slant 'Bom Dia FulanoDev'
  echo -e '\n'

elif [ "$(date +%k)" -ge 12 -a "$(date +%k)" -le 17 ]; then
  figlet -lf slant "Boa tarde FulanoDev"
  echo -e '\n'

else
  figlet -lf slant "Boa noite FulanoDev"
  echo -e '\n'
fi

echo -e " Escolha o que quer instalar:"
echo -e "\n1-NODE:"

echo -e "[y-yes] [N-não]"

for ((count = 0; count < 128; count++)); do
  echo -n "#"
done

echo -e '\n'
echo -e 'DIGITE:\n'
read node

if [ "$node" = 'y' ]; then
  node
else
  echo -e '\n'
  figlet -lf digital 'OK'
fi

echo -e '\n'
echo -e " \n 2-homebrew \n"

echo -e "[y-yes] [N-não]"
read homebrew
if [ "$homebrew" = 'y' ]; then
  homebrew
else
  echo -e '\n'
  figlet -lf digital 'OK'
fi

echo -e "\n 3-kind\n"
echo -e "[y-yes] [N-não] \n"

for ((count = 0; count < 128; count++)); do
  echo -n "#"
done

echo -e '\n'
echo -e 'DIGITE:\n'
read kind

if [ "$kind" = 'y' ]; then
  homebrew
else

  figlet -lf digital 'OK'
fi

echo -e "\n 3-ZSH\n"
echo -e "[y-yes] [N-não] \n"

for ((count = 0; count < 128; count++)); do
  echo -n "#"
done

echo -e '\n'
echo -e 'DIGITE:\n'
read zsh

if [ "$zsh" = 'y' ]; then
  zsh
else

  figlet -lf digital 'OK'
fi
