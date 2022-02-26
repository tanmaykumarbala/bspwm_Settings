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
	sed -i -e "s/background =.*/background = $BBG/g" $PFILE
	sed -i -e 's/foreground =.*/foreground = #FFFFFF/g' $PFILE
	sed -i -e 's/foreground-alt = #.*/foreground-alt = #FFFFFF/g' $PFILE
	sed -i -e "s/shade1 =.*/shade1 = $SH1/g" $PFILE
	sed -i -e "s/shade2 =.*/shade2 = $SH2/g" $PFILE
	sed -i -e "s/shade3 =.*/shade3 = $SH3/g" $PFILE
	sed -i -e "s/shade4 =.*/shade4 = $SH4/g" $PFILE
	sed -i -e "s/shade5 =.*/shade5 = $SH5/g" $PFILE
	sed -i -e "s/shade6 =.*/shade6 = $SH6/g" $PFILE
	sed -i -e "s/shade7 =.*/shade7 = $SH7/g" $PFILE
	sed -i -e "s/shade8 =.*/shade8 = $SH8/g" $PFILE
	#####
	sed -i -e "s/battery =.*/battery = $battery/g" $PFILE
	sed -i -e "s/network =.*/network = $network/g" $PFILE
	sed -i -e "s/date =.*/date = $date/g" $PFILE
	sed -i -e "s/volume =.*/volume = $volume/g" $PFILE
	sed -i -e "s/backlight =.*/backlight = $backlight/g" $PFILE
	sed -i -e "s/workspaces_active =.*/workspaces_active = $workspaces_active/g" $PFILE
	sed -i -e "s/workspaces_urgent =.*/workspaces_urgent = $workspaces_urgent/g" $PFILE
	sed -i -e "s/workspaces_ocupied =.*/workspaces_ocupied = $workspaces_ocupied/g" $PFILE
	sed -i -e "s/workspaces_empty =.*/workspaces_empty = $workspaces_empty/g" $PFILE
	# sed -i -e "s/menu = #.*/menu = $menu/g" $PFILE

	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	* {
	al:		#00000000;
	bg:		${SH1}FF;
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

defaultForeground(){
	battery=$SH7
	network=$SH7
	date=$SH7
	volume=$SH7
	backlight=$SH7
	workspaces_active=$SH3
	workspaces_ocupied=$SH6
	workspaces_urgent=$SH4
	workspaces_empty=$SH7
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

if  [[ $1 = "--amber" ]]; then
	SH1="#FF6F00"	SH2="#FF8F00"	SH3="#FFA000"	SH4="#FFB300"
	SH5="#FFC107"	SH6="#FFCA28"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	BBG="#000000"
	change_color
elif  [[ $1 = "--blue" ]]; then
	SH1="#0D47A1"	SH2="#1565C0"	SH3="#1976D2"	SH4="#1E88E5"
	SH5="#2196F3"	SH6="#42A5F5"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	BBG="#282C35"
	change_color
elif  [[ $1 = "--blue-gray" ]]; then
	SH1="#263238"	SH2="#37474F"	SH3="#455A64"	SH4="#546E7A"
	SH5="#607D8B"	SH6="#78909C"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--brown" ]]; then
	SH1="#3E2723"	SH2="#4E342E"	SH3="#5D4037"	SH4="#6D4C41"
	SH5="#795548"	SH6="#8D6E63"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--cyan" ]]; then
	SH1="#006064"	SH2="#00838F"	SH3="#0097A7"	SH4="#00ACC1"
	SH5="#00BCD4"	SH6="#26C6DA"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--deep-orange" ]]; then
	SH1="#BF360C"	SH2="#D84315"	SH3="#E64A19"	SH4="#F4511E"
	SH5="#FF5722"	SH6="#FF7043"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--deep-purple" ]]; then
	SH1="#311B92"	SH2="#4527A0"	SH3="#512DA8"	SH4="#5E35B1"
	SH5="#673AB7"	SH6="#7E57C2"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--green" ]]; then
	SH1="#1B5E20"	SH2="#2E7D32"	SH3="#388E3C"	SH4="#43A047"
	SH5="#4CAF50"	SH6="#66BB6A"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--gray" ]]; then
	SH1="#212121"	SH2="#424242"	SH3="#616161"	SH4="#757575"
	SH5="#9E9E9E"	SH6="#BDBDBD"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--indigo" ]]; then
	SH1="#1A237E"	SH2="#283593"	SH3="#303F9F"	SH4="#3949AB"
	SH5="#3F51B5"	SH6="#5C6BC0"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--light-blue" ]]; then
	SH1="#01579B"	SH2="#0277BD"	SH3="#0288D1"	SH4="#039BE5"
	SH5="#03A9F4"	SH6="#29B6F6"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--light-green" ]]; then
	SH1="#33691E"	SH2="#558B2F"	SH3="#689F38"	SH4="#7CB342"
	SH5="#8BC34A"	SH6="#9CCC65"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--lime" ]]; then
	SH1="#827717"	SH2="#9E9D24"	SH3="#AFB42B"	SH4="#C0CA33"
	SH5="#CDDC39"	SH6="#D4E157"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--orange" ]]; then
	SH1="#E65100"	SH2="#EF6C00"	SH3="#F57C00"	SH4="#FB8C00"
	SH5="#FF9800"	SH6="#FFA726"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--pink" ]]; then
	SH1="#880E4F"	SH2="#AD1457"	SH3="#C2185B"	SH4="#D81B60"
	SH5="#E91E63"	SH6="#EC407A"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--purple" ]]; then
	SH1="#4A148C"	SH2="#6A1B9A"	SH3="#7B1FA2"	SH4="#8E24AA"
	SH5="#9C27B0"	SH6="#AB47BC"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--red" ]]; then
	SH1="#B71C1C"	SH2="#C62828"	SH3="#D32F2F"	SH4="#E53935"
	SH5="#EE413D"	SH6="#EF5350"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--teal" ]]; then
	SH1="#004D40"	SH2="#00695C"	SH3="#00796B"	SH4="#00897B"
	SH5="#009688"	SH6="#26A69A"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--yellow" ]]; then
	SH1="#F57F17"	SH2="#F9A825"	SH3="#FBC02D"	SH4="#FDD835"
	SH5="#FFEB3B"	SH6="#FFEE58"	SH7="#FFFFFF"	SH8="#000000"
	defaultForeground
	change_color
elif  [[ $1 = "--Aqua_Green" ]]; then
	SH1="#4ADEDE"	SH2="#329D9C"	SH3="#56C596"	SH4="#7BE495"
	SH5="#CFF4D2"	SH6="#D9CAB3"	SH7="#000000"	SH8="#dce7cc"
	defaultForeground
	### ----------------------IMPORTANT NOTE:-----------------------------###
	#																		#
	#	Put custom colors if you wish to set the foreground custom colors.	#
	#	For Background Set SH1, SH2 ... SH8.								#
	#	Call "rofiDefault" if you setting transperancy.						#
	#																		#
	### ------------------------------------------------------------------###
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/minimal4.jpg
elif  [[ $1 = "--Transperant" ]]; then
	SH1="#00"	SH2="#00"	SH3="#00"	SH4="#00"
	SH5="#00"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	BBG="#00"
	defaultForeground
	workspaces_active="#00b9ff"
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
	workspaces_empty="#F5F5F5"
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
	SH5="#000000"	SH6="#E5FCC2"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	workspaces_active="#FFFFFF"		workspaces_ocupied="#796f6f"	workspaces_empty="#FFD9D9"
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--Line_Minimal_ColorFull" ]]; then
	SH1="#000000"	SH2="#000000"	SH3="#000000"	SH4="#000000"
	SH5="#000000"	SH6="#e97309"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	battery="#759463"	network="#00b9ff"	date="#c7ddc6"		volume="#f36c3f"
	backlight="#f5933c"
	workspaces_active="#FFD9D9"		workspaces_ocupied="#796f6f"	workspaces_empty="#050505"
	change_color
	rofiDefault
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--Mininal_Color_Light" ]]; then
	SH1="#145768"	SH2="#126074"	SH3="#107f93"	SH4="#078da6"
	SH5="#45aabc"	SH6="#e97309"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	workspaces_ocupied="#d5c050" workspaces_active="#0da661"
	change_color
	$HOME/bin/chwall.sh $HOME/Pictures/wallpapers/color1.jpg
elif  [[ $1 = "--purpleOrange" ]]; then
	SH1="#30223b"	SH2="#4e254a"	SH3="#71224e"	SH4="#931e48"
	SH5="#af2539"	SH6="#c0381c"	SH7="#FFFFFF"	SH8="#353535"
	defaultForeground
	change_color
else
	cat <<- _EOF_
	No option specified, Available options:
	--Aqua_Green --Transperant --Vibe_Yellow --Something_Redish
	--Retro_90s --Retro_91s --Color_Escape --Bluish_Orange
	--Blue_Sunset --Clasic_and_Retro --Giraffe --Bright_Fruity
	--Exotic_Orcids --Calm --Orange_Sunset --Purple_Garlic
	--Kaleidoscope_Illusions --Blue_Accent --Energetic --Black_And_Bright
	--Childs_Play --Minimal_ColorFull --Minimal_Rang --Minimal_Lake --Superman
	--Wonder_Women --Black_And_White --Line_Minimal_ColorFull --Line_Transperant_ColorFull
	--Mininal_Color_Light --amber	--blue		--blue-gray	--brown
	--cyan	--deep-orange	--deep-purple	--green
	--gray	--indigo	--light-blue	--light-green
	--lime	--orange	--pink		--purple
	--red	--teal		--yellow --purpleOrange
	_EOF_
	fi
