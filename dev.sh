
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

function homebrew(){
 sudo apt install build-essential
 dnf groups mark install "Development Tools"
 dnf groupinstall "Development Tools"
which make
curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
/bin/bash install.sh
brew doctor
}

figlet -cf slant 'Bom Dia FulanoDev'
echo -e '\n'
echo  -e " Escolha o que quer instalar:"
echo -e  "\n1-NODE:"
echo -e "[y-yes] [N-não]"
read node
if [ "$node" = 'y' ]; then
  node
else
   echo -e '\n'
   figlet -lf digital 'OK'
fi

#####################################

echo -e " \n 2-homebrew \n"
echo -e "[y-yes] [N-não]"
read homebrew
if [ "$homebrew" = 'y' ]; then
  homebrew
else
   echo -e '\n'
   figlet -lf digital 'OK'
fi

#########################################################################################################################################

echo -e "\n 3-kind\n"
echo -e "[y-yes] [N-não] \n"
for (( count=0; count<128; count++ ))
do
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



