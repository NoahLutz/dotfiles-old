# dotfiles
Current Arch Dotfiles

<!--- My Setup {{{ -->

### My Setup

* Linux Distro: `arch`
* Window Manager: `bspwm`
* Bar: `lemonbar`
* Launcher: `rofi`
* Terminal Emulator: `urxvt`
* Shell: `bash`
* Terminal Font: `Terminus`
* File Manager: `ranger`
* Text Editor: `vim`
* Browser: `chrome`


Clean
![Clean][screen1]

Screenfetch
![Screenfetch][screen2]

Vim
![Vim][screen3]

Rofi
![Rofi][screen4]
<!--- }}} -->

###TODO

* ~~Finer backlight control?~~
  * now using intel_backlight instead of acpi_video0
  * added `acpi_backlight=none` to boot options
* ~~Fix lag between opening lid after sleep and lockscreen poping up~~
  * ~~try i3lock-fancy (github)~~
  * now using xautolock. See [.xinirc](.xinitrc)
* ~~Add music stats to menubar~~ (maybe inteactive buttons for pause/play/volume)
  * added music tab to lemonbar
  * interactive buttons/expansion on click?
* ~~Fix reboot lag~~
  * Sort of fixed. Removed udev hook from `/etc/mkinitcpio.conf` and replaced it with systemd hook but still happens occasionally
  * Also changed the timeout from 90s to 5s so its not as painful
* ~~set up PIA~~
* ~~Google search in rofi?~~
  * Created google script for rofi (`bin/google`)
  * Added script as modi to rofi and created a keybind
    * see `.xbindkeysrc` 
  * checkout custom modi scripts in rofi
* ~~Disable IR recevier~~
  * Added xorg conf file to `/etc/X11/xorg.conf.d/` to ignore IR recevier
[screen1]: pictures/screen1.jpg
[screen2]: pictures/screen2.jpg
[screen3]: pictures/screen3.jpg 
[screen4]: pictures/rofi.png
