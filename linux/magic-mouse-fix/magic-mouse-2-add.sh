#!/bin/sh

modprobe -r hid_magicmouse
sleep 1
modprobe hid_magicmouse \
  middle_click_3finger=1 \
  scroll_acceleration=1 \
  scroll_speed=20
