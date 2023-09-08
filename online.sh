#!/bin/bash
read -p "Android端末をUSBで接続して下さい"

echo ""

read -p "使用するポートを入力して下さい：" Port
adb tcpip $Port

echo ""

read -p "Android端末のUSB切断して下さい"

echo ""

read -p "接続する端末のIPを入力して下さい：" IP
adb connect $IP:$Port

echo ""

adb devices

echo ""

read -p "↑デバイスが認識できていればミラーリングを開始できます"

scrcpy
