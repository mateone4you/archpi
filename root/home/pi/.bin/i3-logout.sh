#!/bin/sh

DIALOG_RESULT=$(echo -e 'Перезагрузка\nВыключить\nОтмена' | rofi -dmenu -i -p "[Выключение]" -hide-scrollbar -tokenize -lines 3 -eh 1 -width 25 -location 0 -xoffset 0 -yoffset 0 -padding 20 -disable-history -font "Roboto Mono Medium 14" -color-normal "#fdf6e3,#000000,#eee8d5,#5294E2,#eee8d5")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "Перезагрузка" ];
then
    exec systemctl reboot

elif [ "$DIALOG_RESULT" = "Выключить" ];
then
    exec systemctl poweroff

elif [ "$DIALOG_RESULT" = "Отмена" ];
then
    exit 0
fi