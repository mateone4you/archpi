xrdb &
nitrogen --restore &
#thunar --daemon &
compton -b --config ~/.config/compton.conf &
numlockx &
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" &
#slstatus &
luastatus -b dwm -B separator=' • ' ~/.config/luastatus/fs.lua ~/.config/luastatus/cpu-usage.lua ~/.config/luastatus/mem-usage.lua ~/.config/luastatus/cpu-temperature.lua ~/.config/luastatus/alsa.lua ~/.config/luastatus/wireless.lua ~/.config/luastatus/xkb.lua ~/.config/luastatus/time-battery-combined.lua & 
#sleep 5 && /usr/lib/xfce-polkit/xfce-polkit &
#sleep 5 && xfce4-power-manager &
#sleep 30 && pulseaudio --start &
#sleep 30 && volumeicon &
#sleep 30 && nm-applet &