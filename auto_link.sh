#! /usr/bin/bash
fish_path=~/.config/fish
mkdir -p $fish_path

ln ./config.fish $fish_path/

mkdir -p $fish_path/conf.d
ln ./conf.d/dracula.fish $fish_path/conf.d/

mkdir -p $fish_path/functions/
ln ./functions/fish_prompt.fish $fish_path/functions/
