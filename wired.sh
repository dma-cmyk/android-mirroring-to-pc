#!/bin/bash

read -rp "Android端末をUSBで接続して下さい"


cat << 'EOF'

**************接続中のデバイス**************

EOF

adb devices

cat << 'EOF'

*********************************************

EOF


read -rp "デバイスがあったらEnter "

scrcpy
