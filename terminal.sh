echo "######################"
echo "Installing **starship**"
echo "######################"

#Cloning latest release
curl -s https://api.github.com/repos/starship/starship/releases/latest \
  | grep browser_download_url \
  | grep x86_64-unknown-linux-gnu \
  | cut -d '"' -f 4 \
  | wget -i -

#Extracting release
tar xvf starship-*.tar.gz

#Moving binary
sudo mv x86_64-unknown-linux-gnu/starship /usr/local/bin/

#Adding starship to ~/.bashrc
# shellcheck disable=SC2016
echo 'eval "$(starship init bash)"' >> ~/.bashrc
source ~/.bashrc
echo "Starship is ready!"