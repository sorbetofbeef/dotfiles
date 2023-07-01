#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then
	printf %b '\e]P0FAFAF' # set background color to "Base"
	printf %b '\e]P8BEBEB' # set bright black to "Subtext0"
                  
	printf %b '\e]P7E0566' # set text color to "Text"
	printf %b '\e]PFEE902' # set bright white to "Surface1"
                  
	printf %b '\e]P11DA91' # set red to "Red"
	printf %b '\e]P956B6C' # set bright red to "Red"
                  
	printf %b '\e]P2EEA82' # set green to "Green"
	printf %b '\e]PAEEA82' # set bright green to "Green"
                  
	printf %b '\e]P3118DC' # set yellow to "Yellow"
	printf %b '\e]PB118DC' # set bright yellow to "Yellow"
                  
	printf %b '\e]P49A77C' # set blue to "Blue"
	printf %b '\e]PC9A77C' # set bright blue to "Blue"
                  
	printf %b '\e]P556B6C' # set magenta to "Pink"
	printf %b '\e]PD56B6C' # set bright magenta to "Pink"
                  
	printf %b '\e]P66A6A6' # set cyan to "Teal"
	printf %b '\e]PE6A6A6' # set bright cyan to "Teal"
                  
	clear
fi
































