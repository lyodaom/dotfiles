#!/bin/bash
# runlog
xfce4-power-manager
compton &
#conky -d -b -c ${HOME}/.config/conky/conky.conf
#conky -d -b -c ${HOME}/.config/conky/conky2.conf
xmodmap ${HOME}/.Xmodmap
#/code/scripts/xrand-2.sh
#xset mouse 2 9
dunst &
nitrogen --restore
#albert &
tilda & # bash
( sleep 1 && tilda ) & # ranger
( sleep 2 && tilda ) & # python2
volumeicon &
#autocutsel &
#autocutsel -s PRIMARY &
# basket -h &