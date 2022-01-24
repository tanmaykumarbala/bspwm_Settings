#!/bin/sh

myTerm=alacritty
myEdit=nvim
theme="$1"
font="$2"
dir="$HOME/.config/rofi/"

menu(){
	printf "1. alacritty\n"
	printf "2. bspwm\n"
	printf "3. sxhkd\n"
	printf "4. zshrc\n"
	printf "5. polybar_module\n"
	printf "6. polybar_User_module\n"
	printf "7. polybar_Config\n"
	printf "8. rofi_edit_launcher\n"
	printf "9. rofi_dir_launcher\n"
	printf "10. rofi_Launcher\n"
	printf "11. rofi_Theme_colors\n"
	printf "12. rofi_power_menu\n"
	printf "13. Execute_start\n"
	printf "14. Restart_Polybar\n"
}

main(){
	choice=$(menu | rofi -p "" -dmenu -theme "$dir/$theme" -font "$font" | cut -d. -f1)


	case $choice in
		1)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/alacritty/alacritty.yml"
			;;
		2)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/bspwm/bspwmrc"
			;;
		3)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/sxhkd/sxhkdrc"
			;;
		4)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.zshrc"
			;;
		5)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/polybar/modules.ini"
			;;
		6)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/polybar/user_modules.ini"
			;;
		7)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/polybar/config.ini"
			;;
		8)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/rofi/rofi-edit.sh"
			;;
		9)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/rofi/rofi-dir.sh"
			;;
		10)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/rofi/launcher.sh"
			;;
		11)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/rofi/styles/tanmay.rasi"
			;;
		12)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/rofi/rofi-power_menu.sh"
			;;
		13)
			$HOME/bin/docked.sh
			;;
		14)
			$HOME/.config/polybar/launch.sh "topBottom"
			;;

		esac
	}

main
