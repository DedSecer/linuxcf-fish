function fish_user_mode_prompt --description "Display the default mode for the prompt"
    # Do nothing if not in vi mode
	if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
		
		set -l arrow_color $argv[1]	
		switch $fish_bind_mode
            case default
                set_color --bold  "$arrow_color" 
                echo '='
            case insert
				set_color --bold  "$arrow_color"
                echo '-'
            case replace_one
                set_color --bold  "$arrow_color"
                echo '*'
            case replace
                set_color --bold  "$arrow_color"
                echo '*'
            case visual
                set_color --bold  "$arrow_color"
                echo '&'
        end
        set_color normal
#        echo -n ' '
    end
end

