function set_proxy
    set -eg http_proxy
    set -eg https_proxy

    if test -n "$argv"
        set -Ux http_proxy $argv
        set -Ux https_proxy $argv
    else
        set -eU http_proxy
        set -eU https_proxy
    end

end
