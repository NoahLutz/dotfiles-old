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
export PATH=$HOME/bin:$PATH

#background
feh --bg-scale ~/.code.jpg &

#keybinds
sxhkd &
xbindkeys &

#compton
compton -bf --backend glx --vsync opengl-swc&

#enable i3lock
xss-lock -- /usr/bin/i3lock -i /home/noah/pictures/lockscreen.png -u -n &

#start dunst
dunst&

#start redshift
redshift -c /home/noah/.config/redshift.conf &

#start chrome on boot
google-chrome-stable &

#start bspwm
exec bspwm -c /home/noah/.config/bspwm/bspwmrc
