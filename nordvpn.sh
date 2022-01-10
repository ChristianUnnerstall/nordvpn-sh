#!/bin/bash

options=("nordvpn login" "nordvpn logout" "nordvpn account" "nordvpn connect" "nordvpn disconnect" "nordvpn Disable All" "nordvpn Enable All" "nordvpn countries" "nordvpn settings" "nordvpn status")

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
			echo "nordvpn disable everything"
			nordvpn disconnect
			nordvpn set killswitch false
			nordvpn set firewall false
			nordvpn set obfuscate false
			nordvpn set cybersec false
			nordvpn set notify false
			nordvpn set autoconnect false
			nordvpn set ipv6 false
			nordvpn connect
			;;
		7)
			echo "nordvpn enable everything"
			nordvpn disconnect
			nordvpn set firewall true
			nordvpn set killswitch true
			nordvpn set obfuscate true
			nordvpn set cybersec true
			nordvpn set notify true
			nordvpn set autoconnect true
			nordvpn set ipv6 true
			nordvpn connect
			;;
		8)
			echo "nordvpn countries"
			nordvpn countries
			;;
		9)
			echo "nordvpn settings"
			nordvpn settings
			;;
        10)
			echo "nordvpn status"
			nordvpn status
			;;
		11)
			break
			;;
		*) echo "invalid option $REPLY";continue;;
	esac
done
