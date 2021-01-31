function start_ssh_agent
    set keys (ssh-agent -s | cut -f1 -d";" | grep "=" | cut -f1 -d"=")
    set values (ssh-agent -s | cut -f1 -d";" | grep "=" | cut -f2 -d"=")

    set -x $keys[1] $values[1]
    set -x $keys[2] $values[2]

    eval (ssh-agent -s)[3]
end
