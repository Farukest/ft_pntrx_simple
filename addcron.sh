(crontab -l; echo "  
 0 3  */1  *   *    /bin/bash /home/"$1"/clearlogs.sh
 "; ) | crontab -