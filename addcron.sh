(crontab -l; echo "  * *   *   *   *    /bin/bash /home/"$1"/checkmiddles.sh "$1"
 *  */50  *  *  *    /bin/bash /home/"$1"/activity_fix.sh "$2"
 0 3  */1  *   *    /bin/bash /home/"$1"/clearlogs.sh
 
 "; ) | crontab -