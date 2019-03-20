#!/bin/sh

DIALOG_RESULT=$(echo -e 'reboot\npoweroff\nesc' | rofi -dmenu -i -p "[Выключение]" -hide-scrollbar -tokenize -lines 3 -eh 1 -width 25 -location 0 -xoffset 0 -yoffset 0 -padding 20 -disable-history -font "Roboto Mono Medium 14")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "reboot" ];
then
    exec systemctl reboot

elif [ "$DIALOG_RESULT" = "poweroff" ];
then
    exec systemctl poweroff

elif [ "$DIALOG_RESULT" = "esc" ];
then
    exit 0
fi