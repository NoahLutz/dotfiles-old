#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


#Path

#export PATH=$PATH:/home/noah/bin
export PATH=$HOME/bin:$PATH

#GTK themes
export GTK2_RC_FILES=/usr/share/themes/Arc-Dark/gtk-2.0/gtkrc


#Start X Server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

#aliases

alias ls='ls -lah --color=auto'
alias homework="vim ~/documents/lasalle/senior/homework"
alias bl="xbacklight -set "
alias packer="packer --noedit "
alias sleepoff="sudo xset -dpms;sudo xset s off"
