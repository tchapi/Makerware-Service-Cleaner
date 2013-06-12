#!/bin/bash

# Common color helpers
YELLOW='\033[01;33m'  # bold yellow
RED='\033[01;31m' # bold red
GREEN='\033[01;32m' # green
BLUE='\033[01;34m'  # blue
RESET='\033[00;00m' # normal white

  echo -e ""${RESET}
  echo    " # ---------------------------------- #"
  echo -e " # "${GREEN}"    MakerWare  Service Cleaner    "${RESET}" #"
  echo    " # ---------------------------------- #"
  echo ""

echo -e ${RED}"Voulez-vous vraiment nettoyer les fichiers persistants du serveur d'impression de Makerware ?"${RESET}" [non] : \c"
read yn
case $yn in
    [Yy]* ) sudo rm -f /var/tmp/conveyord.pid /var/tmp/conveyord.socket

            echo -e " >> "${GREEN}"Effectué.\n"${RESET}

            echo -e "Vous pouvez maintenant redémarrer Makerware,"
            echo -e "puis relancer le service d'impression via le menu :\n"
  
            echo -e ${YELLOW}"   Services "${RESET}">"${YELLOW}" Restart Background Service"${RESET}



            echo "" ;;
    * ) echo -e " >> "${GREEN}"Annulé."${RESET}

        echo "" ;;
esac

