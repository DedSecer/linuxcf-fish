function set_proxy
    set -Ux http_proxy $argv
    set -Ux https_proxy $argv
end
