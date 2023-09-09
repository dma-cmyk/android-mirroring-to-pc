#!/bin/bash

cat << 'EOF'

**************接続中のデバイス**************

EOF

adb devices

cat << 'EOF'

*********************************************

EOF

read -rp "切断したいデバイスID:" Device
adb disconnect "$Device"


cat << 'EOF'

**************接続中のデバイス**************

EOF

adb devices

cat << 'EOF'

*********************************************

EOF

read -r