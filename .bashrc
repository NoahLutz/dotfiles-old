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
alias packer="packer --noedit "
alias sleepoff="sudo xset -dpms;sudo xset s off"

export QSYS_ROOTDIR="/home/noah/.cache/pacaur/quartus-lite/pkg/quartus-lite//opt/altera/quartus/sopc_builder/bin"
