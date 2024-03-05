
#!/bin/bash
function node(){
 sudo apt-get install wget
 wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash
 source ~/.profile
 export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
nvm ls-remote
nvm  install node
}

fun

figlet -cf slant 'Bom Dia FulanoDev'
echo -e '\n'
echo  -e " Escolha o que quer instalar:"
echo -e  "\n1-NODE:"
echo -e "[y-yes] [N-não]"
read node
if [ "$node" = 'y' ]; then
  node
else
    # Senão
    echo 'Iguais'
fi
echo -e " \n 2-homebrew \n"
read homebrew
echo -e "\n 3-npm\n"
read npm
read escolha


