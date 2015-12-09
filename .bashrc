#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
PS1='[\u@\h \W]\$ '


#Path

export PATH=$PATH:/home/noah/bin


#Start X Server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#aliases

alias homework="vim ~/documents/lasalle/senior/homework"
alias bl="xbacklight -set "
