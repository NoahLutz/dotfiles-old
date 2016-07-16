#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#Path

#export PATH=$PATH:/home/noah/bin
export PATH=$HOME/bin:$PATH


#Start X Server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#aliases

alias ls='ls -lah --color=auto'
alias lsn='ls -lah --color=no'
alias homework="vim ~/documents/lasalle/senior/homework"
alias packer="packer --noedit "
alias sleepoff="sudo xset -dpms;sudo xset s off"
alias vpn_on="sudo systemctl start openvpn@US_New_York_City.service;notify-send 'Starting VPN'"
alias vpn_off="sudo systemctl stop openvpn@US_New_York_City.service;notify-send 'Turning off VPN'"
