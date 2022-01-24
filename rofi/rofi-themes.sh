#!/usr/bin/env bash

font=$2
dir="$HOME/.config/rofi/"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $dir/$1"

# Options
style1="style_1"
style2="style_2"
style3="style_3"
style4="style_4"
style5="style_5"
style6="style_6"
style7="style_7"
style8="Adapta-Nokto.rasi"
style9="android_notification.rasi"
style10="Arc-Dark.rasi"
style11="Arc.rasi"
style12="arthur.rasi"
style13="blue.rasi"
style14="c64.rasi"
style15="DarkBlue.rasi"
style16="dmenu.rasi"
style17="docu.rasi"
style18="fancy.rasi"
style19="glue_pro_blue.rasi"
style20="gruvbox-common.rasi"
style21="gruvbox-dark-hard.rasi"
style22="gruvbox-dark.rasi"
style23="gruvbox-dark-soft.rasi"
style24="gruvbox-light-hard.rasi"
style25="gruvbox-light.rasi"
style26="gruvbox-light-soft.rasi"
style27="iggy.rasi"
style28="Indego.rasi"
style29="lb.rasi"
style30="Monokai.rasi"
style31="paper-float.rasi"
style32="Paper.rasi"
style33="Pop-Dark.rasi"
style34="purple.rasi"
style35="sidebar.rasi"
style36="solarized_alternate.rasi"
style37="solarized.rasi"
style38="tkb_Dmenu.rasi"


# Variable passed to rofi
options="$style1\n$style2\n$style3\n$style4\n$style5\n$style6\n$style7\n$style8\n$style9\n$style10\n$style11\n$style12\n$style13\n$style14\n$style15\n$style16\n$style17\n$style18\n$style19\n$style20\n$style21\n$style22\n$style23\n$style24\n$style25\n$style26\n$style27\n$style28\n$style29\n$style30\n$style31\n$style32\n$style33\n$style34\n$style35\n$style36\n$style37\n$style38"
chosen="$(echo -e "$options" | $rofi_command -font "$font" -p "Themes: " -dmenu -selected-row 0)"
case $chosen in
	$style1)
		cp -rf $HOME/.config/rofi/style_1.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style2)
		cp -rf $HOME/.config/rofi/style_2.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style3)
		cp -rf $HOME/.config/rofi/style_3.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style4)
		cp -rf $HOME/.config/rofi/style_4.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style5)
		cp -rf $HOME/.config/rofi/style_5.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style6)
		cp -rf $HOME/.config/rofi/style_6.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style7)
		cp -rf $HOME/.config/rofi/style_7.rasi $HOME/.config/rofi/theme.rasi
		;;
	$style8)
		cp -rf $HOME/.config/rofi/themes/$style8 $HOME/.config/rofi/theme.rasi
		;;
	$style9)
		cp -rf $HOME/.config/rofi/themes/$style9 $HOME/.config/rofi/theme.rasi
		;;
	$style10)
		cp -rf $HOME/.config/rofi/themes/$style10 $HOME/.config/rofi/theme.rasi
		;;
	$style11)
		cp -rf $HOME/.config/rofi/themes/$style11 $HOME/.config/rofi/theme.rasi
		;;
	$style12)
		cp -rf $HOME/.config/rofi/themes/$style12 $HOME/.config/rofi/theme.rasi
		;;
	$style13)
		cp -rf $HOME/.config/rofi/themes/$style13 $HOME/.config/rofi/theme.rasi
		;;
	$style14)
		cp -rf $HOME/.config/rofi/themes/$style14 $HOME/.config/rofi/theme.rasi
		;;
	$style15)
		cp -rf $HOME/.config/rofi/themes/$style15 $HOME/.config/rofi/theme.rasi
		;;
	$style16)
		cp -rf $HOME/.config/rofi/themes/$style16 $HOME/.config/rofi/theme.rasi
		;;
	$style17)
		cp -rf $HOME/.config/rofi/themes/$style17 $HOME/.config/rofi/theme.rasi
		;;
	$style18)
		cp -rf $HOME/.config/rofi/themes/$style18 $HOME/.config/rofi/theme.rasi
		;;
	$style19)
		cp -rf $HOME/.config/rofi/themes/$style19 $HOME/.config/rofi/theme.rasi
		;;
	$style20)
		cp -rf $HOME/.config/rofi/themes/$style20 $HOME/.config/rofi/theme.rasi
		;;
	$style21)
		cp -rf $HOME/.config/rofi/themes/$style21 $HOME/.config/rofi/theme.rasi
		;;
	$style22)
		cp -rf $HOME/.config/rofi/themes/$style22 $HOME/.config/rofi/theme.rasi
		;;
	$style23)
		cp -rf $HOME/.config/rofi/themes/$style23 $HOME/.config/rofi/theme.rasi
		;;
	$style24)
		cp -rf $HOME/.config/rofi/themes/$style24 $HOME/.config/rofi/theme.rasi
		;;
	$style25)
		cp -rf $HOME/.config/rofi/themes/$style25 $HOME/.config/rofi/theme.rasi
		;;
	$style26)
		cp -rf $HOME/.config/rofi/themes/$style26 $HOME/.config/rofi/theme.rasi
		;;
	$style27)
		cp -rf $HOME/.config/rofi/themes/$style27 $HOME/.config/rofi/theme.rasi
		;;
	$style28)
		cp -rf $HOME/.config/rofi/themes/$style28 $HOME/.config/rofi/theme.rasi
		;;
	$style29)
		cp -rf $HOME/.config/rofi/themes/$style29 $HOME/.config/rofi/theme.rasi
		;;
	$style30)
		cp -rf $HOME/.config/rofi/themes/$style30 $HOME/.config/rofi/theme.rasi
		;;
	$style31)
		cp -rf $HOME/.config/rofi/themes/$style31 $HOME/.config/rofi/theme.rasi
		;;
	$style32)
		cp -rf $HOME/.config/rofi/themes/$style32 $HOME/.config/rofi/theme.rasi
		;;
	$style33)
		cp -rf $HOME/.config/rofi/themes/$style33 $HOME/.config/rofi/theme.rasi
		;;
	$style34)
		cp -rf $HOME/.config/rofi/themes/$style34 $HOME/.config/rofi/theme.rasi
		;;
	$style35)
		cp -rf $HOME/.config/rofi/themes/$style35 $HOME/.config/rofi/theme.rasi
		;;
	$style36)
		cp -rf $HOME/.config/rofi/themes/$style36 $HOME/.config/rofi/theme.rasi
		;;
	$style37)
		cp -rf $HOME/.config/rofi/themes/$style37 $HOME/.config/rofi/theme.rasi
		;;
	$style38)
		cp -rf $HOME/.config/rofi/tkb_dmenu.rasi $HOME/.config/rofi/theme.rasi
		;;
esac
