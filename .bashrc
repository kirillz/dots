#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
exec startx
fi


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias tb="nc termbin.com 9999"

alias update="sudo reflector --verbose  -l 5 -p https --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syyu &&  yay -Syu --noconfirm && sudo pacman -Rsn $(pacman -Qdtq)"