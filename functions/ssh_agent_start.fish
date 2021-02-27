function ssh_agent_start
    set cmd (ssh-agent -s)

    for n in (seq 5)
        if test "$n" = "1" ; or test "$n" = "3" 
            set key (echo $cmd | cut -f$n -d";" | cut -f1 -d"=" | awk '{gsub(/^\s+|\s+$/, "");print}')
            set value (echo $cmd | cut -f$n -d";" | cut -f2 -d"=" | awk '{gsub(/^\s+|\s+$/, "");print}')

            set -gx $key $value
            echo "set -x $key $value;"
        else if test "$n" = "5"
            echo $cmd | cut -f$n -d";" | awk '{gsub(/^\s+|\s+$/, "");print}'
        end
    end
end
