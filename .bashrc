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
alias pia_on="sudo systemctl start openvpn@US_New_York_City.service;notify-send 'Starting VPN - PIA'"
alias pia_off="sudo systemctl stop openvpn@US_New_York_City.service;notify-send 'Ending VPN - PIA'"
alias hvpn_on="sudo systemctl start openvpn@home;notify-send 'Starting VPN - Home'"
alias hvpn_off="sudo systemctl stop openvpn@home.service;notify-send 'Ending VPN - Home'"
alias vpn_staus="sudo systemctl status openvpn@*"
