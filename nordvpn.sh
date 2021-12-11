#!/bin/bash

options=("nordvpn connect" "nordvpn disconnect" "nordvpn settings" "nordvpn status")

select opt in "${options[@]}" "Quit"
do
	clear
	case "$REPLY" in
		1)
			echo "nordvpn connect"
			nordvpn connect
			;;
		2)
			echo "nordvpn disconnect"
			nordvpn disconnect
			;;
        3)
			echo "nordvpn settings"
			nordvpn settings
			;;
        4)
			echo "nordvpn status"
			nordvpn status
			;;
		5)
			break
			;;
		*) echo "invalid option $REPLY";continue;;
	esac
done
