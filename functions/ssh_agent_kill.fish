function ssh_agent_kill
    set cmd (ssh-agent -k)

    echo (echo $cmd | awk '{gsub("unset","set -e");print}')

end
