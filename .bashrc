#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#Path

export PATH=$PATH:/home/noah/bin


#Start X Server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#aliases

alias ls='ls -lah --color=auto'
alias homework="vim ~/documents/lasalle/senior/homework"
alias bl="xbacklight -set "
alias packer="packer --noedit "
alias sleepoff="sudo xset -dpms;sudo xset s off"
