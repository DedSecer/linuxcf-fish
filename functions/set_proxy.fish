function set_proxy
    if test -n "$argv"
        set -gx http_proxy $argv
        set -gx https_proxy $argv
    else
        set -eg http_proxy
        set -eg https_proxy
    end

end
