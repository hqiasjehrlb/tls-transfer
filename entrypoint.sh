#!/bin/sh

/usr/bin/socat ssl-l:${PORT},fork,reuseaddr,cert=/certs/server.crt,key=/certs/server.key,verify=0 tcp:${REMOTE_ADDR}
