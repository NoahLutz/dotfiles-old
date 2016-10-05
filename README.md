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


Screenfetch
![Screenfetch][screenfetch]

Clean
![Clean][clean]

Browser
![Browser][browser]

Fake Dirty
![Fake Dirty][fake_dirty]

Rofi
![Rofi][screenRofi]
<!--- }}} -->

###TODO

* ~~Finer backlight control?~~
  * now using intel_backlight instead of acpi_video0
  * added `acpi_backlight=none` to boot options
* ~~Fix lag between opening lid after sleep and lockscreen poping up~~
  * ~~try i3lock-fancy (github)~~
  * now using xautolock. See [.xinitrc](.xinitrc)
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
[screenfetch]: pictures/screenfetch.jpg
[browser]: pictures/browser.jpg
[fake_dirty]: pictures/fake_dirty.jpg 
[screenRofi]: pictures/rofi.png
[clean]: pictures/clean.jpg
