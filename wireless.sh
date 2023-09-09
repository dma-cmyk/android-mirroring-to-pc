#!/bin/bash

read -rp "Android端末をUSBで接続して下さい"

echo ""

read -rp "使用するポートを入力して下さい：" Port
adb tcpip "$Port"

echo ""

read -rp "Android端末のUSB切断して下さい"

echo ""

read -rp "接続する端末のIPを入力して下さい:" IP
adb connect "$IP:$Port"

cat << 'EOF'

**************接続中のデバイス**************

EOF

adb devices

cat << 'EOF'

*********************************************

EOF

read -rp "デバイスが認識できていればミラーリングを開始できます"

scrcpy
