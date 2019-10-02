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

echo "######################"
echo "**Starship** is ready"
echo "######################"

echo "######################"
echo "Installing **fish**"
echo "######################"

#Adding repos and installing fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update

sudo apt install fish -y

curl -L https://get.oh-my.fish | fish

echo "######################"
echo "**Fish** is ready"
echo "######################"

PS3="Select your terminal: "
options=("Starship" "Fish" "Skip")
select opt in "${options[@]}"
do
  case $opt in
    "Starship")
      echo "You choosed to use Starship"
      # shellcheck disable=SC2016
      echo 'eval "$(starship init bash)"' >> ~/.bashrc
      break
      ;;
    "Fish")
      echo "You choosed to use Fish"
      echo 'exec fish' >> ~/.bashrc
      break
      ;;
    "Skip")
      echo "Skipping this choice!"
      break
      ;;
  esac
done

# shellcheck disable=SC1090
source ~/.bashrc

echo "######################"
echo "*Terminal* is ready"
echo "######################"
