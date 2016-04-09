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
<!--- }}} -->

###TODO

* ~~Finer backlight control?~~
  * now using intel_backlight instead of acpi_video0
  * added `acpi_backlight=none` to boot options
* Fix lag between opening lid after sleep and lockscreen poping up
* Add music stats to menubar (maybe inteactive buttons for pause/play/volume)
* ~~Fix reboot lag~~
  * Sort of fixed. Removed udev hook from `/etc/mkinitcpio.conf` and replaced it with systemd hook but still happens occasionally
  * Also changed the timeout from 90s to 5s so its not as painful
* set up PIA

[screen1]: pictures/screen1.jpg
[screen2]: pictures/screen2.jpg
[screen3]: pictures/screen3.jpg
