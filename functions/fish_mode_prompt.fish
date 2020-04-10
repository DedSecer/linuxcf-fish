# The fish_mode_prompt function is prepended to the prompt
function fish_mode_prompt --description "Displays the current mode"
    # To reuse the mode indicator use this function instead
    
	set -l arrow_color "green"
	if test $status != 0
	    set arrow_color "red"
	end
    fish_user_mode_prompt $arrow_color
end
