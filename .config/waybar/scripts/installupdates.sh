#!/bin/bash
#  ___           _        _ _   _   _           _       _             
# |_ _|_ __  ___| |_ __ _| | | | | | |_ __   __| | __ _| |_ ___  ___  
#  | || '_ \/ __| __/ _` | | | | | | | '_ \ / _` |/ _` | __/ _ \/ __| 
#  | || | | \__ \ || (_| | | | | |_| | |_) | (_| | (_| | ||  __/\__ \ 
# |___|_| |_|___/\__\__,_|_|_|  \___/| .__/ \__,_|\__,_|\__\___||___/ 
#                                    |_|                              
# by Stephan Raabe (2024) 

sleep 1
clear
figlet "Install Updates"
echo

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

if gum confirm "DO YOU WANT TO START THE UPDATE NOW?" ;then
    echo 
    echo ":: Update started."
elif [ $? -eq 130 ]; then
        exit 130
else
    echo
    echo ":: Update canceled."
    exit;
fi

_isInstalled() {
    package="$1";
    check="$(yay -Qs --color always "${package}" | grep "local" | grep "${package} ")";
	
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

if [[ $(_isInstalled "timeshift") == "0" ]] ;then                                        
    echo
    if gum confirm "DO YOU WANT TO CREATE A SNAPSHOT?" ;then
        echo
        c=$(gum input --placeholder "Enter a comment for the snapshot...")
        sudo timeshift --create --comments "$c"
        sudo timeshift --list
        sudo grub-mkconfig -o /boot/grub/grub.cfg
        echo ":: DONE. Snapshot $c created!"
        echo
    elif [ $? -eq 130 ]; then
        echo ":: Snapshot skipped."
        exit 130
    else
        echo ":: Snapshot skipped."
    fi
    echo
fi

yay --noconfirm

if [[ $(_isInstalled "flatpak") == "0" ]] ;then
    flatpak upgrade
fi

# Signals to the custom/updates module to re-evaluate the number of update packages available, see: https://man.archlinux.org/man/waybar-custom.5.en#Alternate_Pacman
pkill -RTMIN+8 waybar

notify-send "Update complete"
echo 
echo ":: Update complete"
echo 
echo 

echo "Press [ENTER] to close."
read -t 30
