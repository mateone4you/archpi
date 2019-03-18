xrdb &
nitrogen --restore &
compton -b --config ~/.config/compton.conf &
numlockx &
setxkbmap -layout us,ru -option "grp:ctrl_shift_toggle,grp_led:scroll" &
luastatus -b dwm -B separator=' • ' ~/.config/luastatus/fs.lua \
				    ~/.config/luastatus/cpu-usage.lua \
				    ~/.config/luastatus/mem-usage.lua \
				    ~/.config/luastatus/cpu-temperature.lua \
				    ~/.config/luastatus/alsa.lua \
				    ~/.config/luastatus/wireless.lua \
				    ~/.config/luastatus/xkb.lua \
				    ~/.config/luastatus/time-date.lua &&
#sleep 30 && pulseaudio --start &
