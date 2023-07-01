#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then
	printf %b '\e]P0282C34' # set background color to "Base"
	printf %b '\e]P85C6370' # set bright black to "Subtext0"
                  
	printf %b '\e]P7E06C75' # set text color to "Text"
	printf %b '\e]PFD19A66' # set bright white to "Surface1"
                  
	printf %b '\e]P198C379' # set red to "Red"
	printf %b '\e]P956B6C2' # set bright red to "Red"
                  
	printf %b '\e]P2E5C07B' # set green to "Green"
	printf %b '\e]PAE5C07B' # set bright green to "Green"
                  
	printf %b '\e]P361AFEF' # set yellow to "Yellow"
	printf %b '\e]PB61AFEF' # set bright yellow to "Yellow"
                  
	printf %b '\e]P4C678DD' # set blue to "Blue"
	printf %b '\e]PCC678DD' # set bright blue to "Blue"
                  
	printf %b '\e]P556B6C2' # set magenta to "Pink"
	printf %b '\e]PD56B6C2' # set bright magenta to "Pink"
                  
	printf %b '\e]P6ABB2BF' # set cyan to "Teal"
	printf %b '\e]PEABB2BF' # set bright cyan to "Teal"
                  
	clear
fi
























