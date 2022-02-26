#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
	-theme $HOME/.config/rofi/theme.rasi \
	<<< "Aqua_Green|Transperant|Vibe_Yellow|Something_Redish|Retro_90s|Retro_91s|Color_Escape|Bluish_Orange|Blue_Sunset|Clasic_and_Retro|Exotic_Orcids|Calm|Orange_Sunset|Giraffe|Purple_Garlic|Bright_Fruity|Kaleidoscope_Illusions|Blue_Accent|Energetic|Black_And_Bright|Childs_Play|Swiss_Meadows|Minimal_ColorFull|Minimal_Rang|Minimal_Lake|Superman|Wonder_Women|Black_And_White|Line_Minimal_ColorFull|Line_Transperant_ColorFull|Mininal_Color_Light|amber-dark|\
♥ blue-dark|♥ blue-gray-dark|♥ brown-dark|♥ cyan-dark|♥ deep-orange-dark|\
♥ deep-purple-dark|♥ green-dark|♥ gray-dark|♥ indigo-dark|♥ blue-light-dark|\
♥ green-light-dark|♥ lime-dark|♥ orange-dark|♥ pink-dark|♥ purple-dark|♥ red-dark|♥ teal-dark|♥ yellow-dark|\
♥ purpleOrange")"

	case "$MENU" in
		Mininal_Color_Light) "$SDIR"/themes.sh --Mininal_Color_Light;;
		Line_Transperant_ColorFull) "$SDIR"/themes.sh --Line_Transperant_ColorFull;;
		Line_Minimal_ColorFull) "$SDIR"/themes.sh --Line_Minimal_ColorFull;;
		Black_And_White) "$SDIR"/themes.sh --Black_And_White;;
		Superman) "$SDIR"/themes.sh --Superman;;
		Wonder_Women) "$SDIR"/themes.sh --Wonder_Women;;
		Minimal_Lake) "$SDIR"/themes.sh --Minimal_Lake;;
		Minimal_Rang) "$SDIR"/themes.sh --Minimal_Rang;;
		Minimal_ColorFull) "$SDIR"/themes.sh --Minimal_ColorFull;;
		Aqua_Green) "$SDIR"/themes.sh --Aqua_Green;;
		Transperant) "$SDIR"/themes.sh --Transperant;;
		Vibe_Yellow) "$SDIR"/themes.sh --Vibe_Yellow;;
		Something_Redish) "$SDIR"/themes.sh --Something_Redish;;
		Retro_90s) "$SDIR"/themes.sh --Retro_90s;;
		Retro_91s) "$SDIR"/themes.sh --Retro_91s;;
		Color_Escape) "$SDIR"/themes.sh --Color_Escape;;
		Bluish_Orange) "$SDIR"/themes.sh --Bluish_Orange;;
		Blue_Sunset) "$SDIR"/themes.sh --Blue_Sunset;;
		Clasic_and_Retro) "$SDIR"/themes.sh --Clasic_and_Retro;;
		Exotic_Orcids) "$SDIR"/themes.sh --Exotic_Orcids;;
		Calm) "$SDIR"/themes.sh --Calm;;
		Orange_Sunset) "$SDIR"/themes.sh --Orange_Sunset;;
		Giraffe) "$SDIR"/themes.sh --Giraffe;;
		Purple_Garlic) "$SDIR"/themes.sh --Purple_Garlic;;
		Bright_Fruity) "$SDIR"/themes.sh --Bright_Fruity;;
		Kaleidoscope_Illusions) "$SDIR"/themes.sh --Kaleidoscope_Illusions;;
		Blue_Accent) "$SDIR"/themes.sh --Blue_Accent;;
		Energetic) "$SDIR"/themes.sh --Energetic;;
		Black_And_Bright) "$SDIR"/themes.sh --Black_And_Bright;;
		Childs_Play) "$SDIR"/themes.sh --Childs_Play;;
		Swiss_Meadows) "$SDIR"/themes.sh --Swiss_Meadows;;
		## Dark Colors
		*amber-dark) "$SDIR"/themes.sh --amber ;;
		*blue-dark) "$SDIR"/themes.sh --blue ;;
		*blue-gray-dark) "$SDIR"/themes.sh --blue-gray ;;
		*brown-dark) "$SDIR"/themes.sh --brown ;;
		*cyan-dark) "$SDIR"/themes.sh --cyan ;;
		*deep-orange-dark) "$SDIR"/themes.sh --deep-orange ;;
		*deep-purple-dark) "$SDIR"/themes.sh --deep-purple ;;
		*green-dark) "$SDIR"/themes.sh --green ;;
		*gray-dark) "$SDIR"/themes.sh --gray ;;
		*indigo-dark) "$SDIR"/themes.sh --indigo ;;
		*blue-light-dark) "$SDIR"/themes.sh --light-blue ;;
		*green-light-dark) "$SDIR"/themes.sh --light-green ;;
		*lime-dark) "$SDIR"/themes.sh --lime ;;
		*orange-dark) "$SDIR"/themes.sh --orange ;;
		*pink-dark) "$SDIR"/themes.sh --pink ;;
		*purple-dark) "$SDIR"/themes.sh --purple ;;
		*red-dark) "$SDIR"/themes.sh --red ;;
		*teal-dark) "$SDIR"/themes.sh --teal ;;
		*yellow-dark) "$SDIR"/themes.sh --yellow;;		
		*purpleOrange) "$SDIR"/themes.sh --purpleOrange;;				
	esac
