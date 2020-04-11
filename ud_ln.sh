#! /usr/bin/bash

#update file from github and make hard link to your config directory

fish_path=~/.config/fish
ln_cmd='ln -i'
func_path=functions

git pull

mkdir -p $fish_path

${ln_cmd} ./config.fish $fish_path/

mkdir -p $fish_path/conf.d
${ln_cmd} ./conf.d/dracula.fish $fish_path/conf.d/

mkdir -p $fish_path/functions/
for file in `ls ./${func_path}`  
do
	${ln_cmd} "./${func_path}/${file}"  "${fish_path}/${func_path}/"
done	
