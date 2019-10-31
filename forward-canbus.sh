#!/bin/sh

if ifconfig $CAN_INTERFACE ; then
    /usr/bin/socat -b 2048 -u INTERFACE:$CAN_INTERFACE,pf=29,type=3,protocol=1 UNIX-CONNECT:$CAN_DOMAIN_SOCKET_PATH
    exit 1
fi
