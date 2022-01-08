#!/bin/bash

# https://support.nordvpn.com/de/Konnektivitaet/Linux/1569819582/NordVPN-unter-Debian-Ubuntu-Raspberry-Pi-Elementary-OS-und-Linux-Mint-installieren-und-verwenden.htm

options=("nordvpn login" "nordvpn logout" "nordvpn account" "nordvpn connect" "nordvpn disconnect" "nordvpn countries" "nordvpn settings" "nordvpn status")

select opt in "${options[@]}" "Quit"
do
	clear
	case "$REPLY" in
		1)
			echo "nordvpn login"
			nordvpn login
			;;
		2)
			echo "nordvpn logout"
			nordvpn logout
			;;
		3)
			echo "nordvpn account"
			nordvpn account
			;;
		4)
			echo "nordvpn connect"
			nordvpn connect
			;;
		5)
			echo "nordvpn disconnect"
			nordvpn disconnect
			;;
		6)
			echo "nordvpn countries"
			nordvpn countries
			;;
		7)
			echo "nordvpn settings"
			nordvpn settings
			;;
        8)
			echo "nordvpn status"
			nordvpn status
			;;
		9)
			break
			;;
		*) echo "invalid option $REPLY";continue;;
	esac
done
