if [ "$EUID" -ne 0 ]
  then echo "Please run as root!"
  exit
fi

#Check dependencies
chmod +x installTools.sh
/bin/bash installTools.sh

#Adding aliases
chmod +x alias.sh
/bin/bash alias.sh

#Configuring terminal
chmod +x terminal.sh
/bin/bash terminal.sh
