#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/colors.ini"
RFILE="$HOME/.config/rofi/styles/tanmay.rasi"
FILE="$HOME/.config/polybar/glyphs.ini"

# Uncomment below line for bar transperancy.
# BBG="#02"
# Uncomment below line for bar opacity.
BBG="#90"

# Change colors
change_color() {
	sed -i -e "s/background = #.*/background = $BBG/g" $PFILE
	sed -i -e 's/foreground = #.*/foreground = #FFFFFF/g' $PFILE
	sed -i -e 's/foreground-alt = #.*/foreground-alt = #FFFFFF/g' $PFILE
	sed -i -e "s/shade1 = #.*/shade1 = $SH1/g" $PFILE
	sed -i -e "s/shade2 = #.*/shade2 = $SH2/g" $PFILE
	sed -i -e "s/shade3 = #.*/shade3 = $SH3/g" $PFILE
	sed -i -e "s/shade4 = #.*/shade4 = $SH4/g" $PFILE
	sed -i -e "s/shade5 = #.*/shade5 = $SH5/g" $PFILE
	sed -i -e "s/shade6 = #.*/shade6 = $SH6/g" $PFILE
	sed -i -e "s/shade7 = #.*/shade7 = $SH7/g" $PFILE
	sed -i -e "s/shade8 = #.*/shade8 = $SH8/g" $PFILE
	#####
	sed -i -e "s/battery = #.*/battery = $battery/g" $PFILE
	sed -i -e "s/network = #.*/network = $network/g" $PFILE
	sed -i -e "s/date = #.*/date = $date/g" $PFILE
	sed -i -e "s/volume = #.*/volume = $volume/g" $PFILE
	sed -i -e "s/backlight = #.*/backlight = $backlight/g" $PFILE
	# sed -i -e "s/workspaces = #.*/workspaces = $workspaces/g" $PFILE
	# sed -i -e "s/workspaces_active = #.*/workspaces_active = $workspaces_active/g" $PFILE
	# sed -i -e "s/workspaces_urgent = #.*/workspaces_urgent = $workspaces_urgent/g" $PFILE
	# sed -i -e "s/workspaces_inactive = #.*/workspaces_inactive = $workspaces_inactive/g" $PFILE
	# sed -i -e "s/menu = #.*/menu = $menu/g" $PFILE

	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	* {
	al:		#00000000;
	bg:		${SH8}FF;
	se:		${SH2}FF;
	red:	${SH3}FF;
	green:	${SH4}FF;
	fg:		${SH7}FF;
	ac:		${SH5}FF;
	yellow:	#FDD835ff;
	blue:	#42A5F5ff;
	purple:	#BA68C8ff;
	cyan:	#4DD0E1ff;
}
EOF

polybar-msg cmd restart
}

change_styleToBasic() {
	sed -i -e "s/gleft = .*/gleft = ""/g" $FILE
	sed -i -e "s/gright = .*/gright = ""/g" $FILE

	polybar-msg cmd restart
}

defaultForeground(){
	battery=$SH7
	network=$SH7
	date=$SH7
	volume=$SH7
	backlight=$SH7
}

rofiDefault(){
	SH1="#D46C4E"	SH2="#F9AD6A"	SH3="#C6A477"	SH4="#43978D"
	SH5="#264D59"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	cat > $RFILE <<- EOF
	/* colors */

	* {
	al:		#00000000;
	bg:		${SH8}FF;
	se:		${SH2}FF;
	red:	${SH3}FF;
	green:	${SH4}FF;
	fg:		${SH7}FF;
	ac:		${SH5}FF;
	yellow:	#FDD835ff;
	blue:	#42A5F5ff;
	purple:	#BA68C8ff;
	cyan:	#4DD0E1ff;
}
EOF

}

if  [[ $1 = "--Aqua_Green" ]]; then
	SH1="#4ADEDE"	SH2="#329D9C"	SH3="#56C596"	SH4="#7BE495"
	SH5="#CFF4D2"	SH6="#D9CAB3"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/minimal4.jpg
elif  [[ $1 = "--Transperant" ]]; then
	SH1="#00"	SH2="#00"	SH3="#00"	SH4="#00"
	SH5="#00"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	BBG="#00"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--Vibe_Yellow" ]]; then
	SH1="#FF4E50"	SH2="#FC913A"	SH3="#F9D423"	SH4="#EDE574"
	SH5="#E1F5C4"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/VibeYellow.jpg
elif  [[ $1 = "--Something_Redish" ]]; then
	SH1="#83AF9B"	SH2="#C8C8A9"	SH3="#F9CDAD"	SH4="#FC9D9A"
	SH5="#FE4365"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/something_Redish.jpg
elif  [[ $1 = "--Retro_90s" ]]; then
	SH1="#D46C4E"	SH2="#F9AD6A"	SH3="#C6A477"	SH4="#43978D"
	SH5="#264D59"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--Retro_91s" ]]; then
	SH5="#D46C4E"	SH4="#F9AD6A"	SH3="#C6A477"	SH2="#43978D"
	SH1="#264D59"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--Color_Escape" ]]; then
	SH1="#455054"	SH2="#9B9B9B"	SH3="#308695"	SH4="#D45769"
	SH5="#E69D45"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Bluish_Orange" ]]; then
	SH1="#478BA2"	SH2="#DE5B6D"	SH3="#E9765B"	SH4="#F2A490"
	SH5="#B9D4Db"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Blue_Sunset" ]]; then
	SH1="#36688D"	SH2="#F3CD05"	SH3="#F49F05"	SH4="#F18904"
	SH5="#BDA589"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Clasic_and_Retro" ]]; then
	SH1="#A7414A"	SH2="#282726"	SH3="#6A8A82"	SH4="#A37C27"
	SH5="#563838"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Exotic_Orcids" ]]; then
	SH1="#192E5B"	SH2="#1D65A6"	SH3="#72A2C0"	SH4="#00743F"
	SH5="#F2A104"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Calm" ]]; then
	SH1="#040C0E"	SH2="#132226"	SH3="#525B56"	SH4="#BE9063"
	SH5="#A4978E"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Orange_Sunset" ]]; then
	SH1="#A3586D"	SH2="#5C4A72"	SH3="#F3B05A"	SH4="#F4874B"
	SH5="#F46A4E"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Giraffe" ]]; then
	SH1="#253F5B"	SH2="#4F728E"	SH3="#BE8260"	SH4="#D7B095"
	SH5="#74412B"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Purple_Garlic" ]]; then
	SH1="#BE3B45"	SH2="#F07995"	SH3="#F3F1F3"	SH4="#A58E87"
	SH5="#BE302B"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/purpleGarlic.jpg
elif  [[ $1 = "--Bright_Fruity" ]]; then
	SH1="#D9DCD8"	SH2="#9BA747"	SH3="#F29D4B"	SH4="#D57030"
	SH5="#8B281F"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
elif  [[ $1 = "--Kaleidoscope_Illusions" ]]; then
	SH1="#5AA382"	SH2="#78D6AC"	SH3="#BDA728"	SH4="#704307"
	SH5="#F7B178"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
elif  [[ $1 = "--Blue_Accent" ]]; then
	SH1="#8ED3F4"	SH2="#E4EBF2"	SH3="#328DAA"	SH4="#8A8683"
	SH5="#E4E4E4"	SH6="#E5FCC2"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	change_color
elif  [[ $1 = "--Energetic" ]]; then
	SH1="#000D29"	SH2="#118C8B"	SH3="#BCA18D"	SH4="#F2746B"
	SH5="#F14D49"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Black_And_Bright" ]]; then
	SH1="#10000C"	SH2="#515B51"	SH3="#8C7547"	SH4="#EFA747"
	SH5="#DAC6AC"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Childs_Play" ]]; then
	SH1="#D75B66"	SH2="#23345C"	SH3="#F1BA4B"	SH4="#BD8A44"
	SH5="#BFAFA0"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Swiss_Meadows" ]]; then
	SH1="#BD3E85"	SH2="#182657"	SH3="#121F40"	SH4="#D59B2D"
	SH5="#8D541E"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
elif  [[ $1 = "--Minimal_ColorFull" ]]; then
	SH1="#512477"	SH2="#4e2b4c"	SH3="#ee3548"	SH4="#f36c3f"
	SH5="#f5933c"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/minimal3.jpg
elif  [[ $1 = "--Minimal_Rang" ]]; then
	SH1="#254145"	SH2="#528864"	SH3="#a56357"	SH4="#aa4a4c"
	SH5="#c18853"	SH6="#cdba75"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/minimal1.jpg
elif  [[ $1 = "--Minimal_Lake" ]]; then
	SH1="#3f2845"	SH2="#572d45"	SH3="#8d4143"	SH4="#c6633c"
	SH5="#e78a3a"	SH6="#985d61"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/wall6.jpg
elif  [[ $1 = "--Superman" ]]; then
	SH1="#2f4c54"	SH2="#07456a"	SH3="#93312e"	SH4="#f64b3a"
	SH5="#c79284"	SH6="#985d61"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/superman.jpg
elif  [[ $1 = "--Wonder_Women" ]]; then
	SH1="#012138"	SH2="#530714"	SH3="#e77407"	SH4="#3b6f6d"
	SH5="#5eb2b2"	SH6="#e97309"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/wonder_women.jpg
elif  [[ $1 = "--Black_And_White" ]]; then
	SH1="#000000"	SH2="#000000"	SH3="#000000"	SH4="#000000"
	SH5="#000000"	SH6="#e97309"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/wonder_women.jpg
elif  [[ $1 = "--Line_Minimal_ColorFull" ]]; then
	SH1="#000000"	SH2="#000000"	SH3="#000000"	SH4="#000000"
	SH5="#000000"	SH6="#ee3548"	SH7="#FFFFFF"	SH8="#353535"
	battery="#512477"	network="#4e2b4c"	date="#ee3548"		volume="#f36c3f"
	backlight="#f5933c"
	change_color
	rofiDefault
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
	change_styleToBasic
else
	cat <<- _EOF_
	No option specified, Available options:
	--Aqua_Green --Transperant --Vibe_Yellow --Something_Redish
	--Retro_90s --Retro_91s --Color_Escape --Bluish_Orange
	--Blue_Sunset --Clasic_and_Retro --Giraffe --Bright_Fruity
	--Exotic_Orcids --Calm --Orange_Sunset --Purple_Garlic
	--Kaleidoscope_Illusions --Blue_Accent --Energetic --Black_And_Bright
	--Childs_Play --Minimal_ColorFull --Minimal_Rang --Minimal_Lake --Superman
	--Wonder_Women --Black_And_White --Line_Minimal_ColorFull
	_EOF_
fi
