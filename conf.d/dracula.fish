set -l foreground f8f8f2
set -l selection  44475a
set -l comment    6272a4

set -l red    ff5555
set -l orange ffb86c
set -l yellow f4f99d
set -l green  50fa7b
set -l cyan   8be9fd
set -l pink   ff79c6
set -l purple bd93f9

set -g fish_color_autosuggestion $selection
set -g fish_color_command        $cyan
set -g fish_color_comment        $comment
set -g fish_color_end            $orange
set -g fish_color_error          $red
set -g fish_color_escape         $pink
set -g fish_color_normal         $foreground
set -g fish_color_operator       $green
set -g fish_color_param          $purple
set -g fish_color_quote          $yellow
set -g fish_color_redirection    $foreground
set -g fish_color_search_match   --background=$selection
set -g fish_color_selection      --background=$selection
if test "$TERM" = 'linux'
	echo -en "\e]P0282a36" #black
	echo -en "\e]P844475a" #darkgrey
	echo -en "\e]P1D75F5F" #darkred
	echo -en "\e]P9ff5555" #red
	echo -en "\e]P287AF5F" #darkgreen
	echo -en "\e]PA50FA7B" #green
	echo -en "\e]P3D7AF87" #brown
	echo -en "\e]PBF1FA8C" #yellow
	echo -en "\e]P48787AF" #darkblue
	echo -en "\e]PCBD93F9" #blue
	echo -en "\e]P5BD53A5" #darkmagenta
	echo -en "\e]PDFF79C6" #magenta
	echo -en "\e]P65FAFAF" #darkcyan
	echo -en "\e]PE8be9fd" #cyan
	echo -en "\e]P7E5E5E5" #lightgrey
	echo -en "\e]PFF8F8F2" #white
	clear #for background artifacting
end
