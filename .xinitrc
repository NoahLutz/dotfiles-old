#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_THEME=Arc-Darker
export GTK2_RC_FILES=/usr/share/themes/Arc-Darker/gtk-2.0/gtkrc



#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login


#bacground
feh --bg-scale ~/.oregon_coast.jpg &

#Lockscreen
#xss-lock -- i3lock-fancy &
xautolock -locker i3lock-fancy &

#keybinds
sxhkd &
xbindkeys &

#compton
compton -b --backend glx&

#start bar
panel &

#start dunst
dunst&

#start redshift
redshift -c /home/noah/.config/redshift.conf &

#start chrome on boot
google-chrome-stable &

#mount google drive
gdfs -o umask=007,uid=`id -u`,gid=`id -g` /home/noah/.gdrive/gdfs.creds /mnt/noah/gdrive &

#start bspwm
exec bspwm -c /home/noah/.config/bspwm/bspwmrc
