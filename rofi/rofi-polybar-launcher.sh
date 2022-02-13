#!/usr/bin/env bash

font=$2
rdir="$HOME/.config/rofi/"
uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme $rdir/$1"
DIR="$HOME/.config/polybar"
launchFILE="$HOME/.config/polybar/launch.sh"
SETDISPLAY="$HOME/bin/setPolyBar_Monitor.sh"

# Options
l1="Bottom_Bar"
l2="Top_Bar"
l3="Top_and_Bottom_Bar"
l4="Top_and_Bottom_Bar_reverted"
l5="Bottom_Bar_With_External_Screen_Bar"
l6="Top_Bar_With_External_Screen_Bar"
l7="Top_and_Bottom_Bar_With_External_Screen_Bar"
l8="Simple_Organize"
l9="Workspace_Center"
l10="Simple_Organize_With_External"
l11="Simple_Organize_Top_BAR"

createPolybarFile(){
	# Setting the Display for polybar.
	$SETDISPLAY
	# Deleting all Polybar run commands.
	sed -i -e "s/polybar -q.*//" $launchFILE
	sed '/^$/d' $launchFILE > $DIR"/launch.sh.tmp"
	mv $DIR"/launch.sh.tmp" $launchFILE
	chmod +x $launchFILE
}

# Variable passed to rofi
options="$l1\n$l2\n$l3\n$l4\n$l5\n$l6\n$l7\n$l8\n$l9\n$l10\n$l11"
chosen="$(echo -e "$options" | $rofi_command -font "$font" -p "Polybar Modes: " -dmenu -selected-row 0)"
case $chosen in
	$l1)
		createPolybarFile
		echo "polybar -q full_bottom -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l2)
		createPolybarFile
		echo "polybar -q full_top -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l3)
		createPolybarFile
		echo "polybar -q internal -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q top -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l4)
		createPolybarFile
		echo "polybar -q right_bottom -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q right_top -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l5)
		createPolybarFile
		echo "polybar -q full_bottom -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q external -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l6)
		createPolybarFile
		echo "polybar -q full_top -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q external -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l7)
		createPolybarFile
		echo "polybar -q internal -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q top -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q external -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l8)
		createPolybarFile
		echo "polybar -q noLeft -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l9)
		createPolybarFile
		echo "polybar -q workspace_Center -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l10)
		createPolybarFile
		echo "polybar -q noLeft -c \"\$DIR\"/config.ini &" >> $launchFILE
		echo "polybar -q external -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
	$l11)
		createPolybarFile
		echo "polybar -q noLeftTop -c \"\$DIR\"/config.ini &" >> $launchFILE
		$launchFILE
		;;
esac

