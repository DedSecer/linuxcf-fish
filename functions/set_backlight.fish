function set_backlight
    echo $argv > /sys/class/backlight/intel_backlight/brightness
end
