#!/bin/bash

# go to homedir.
cd $CDNBOXDDIR
# prefer local node if available
PATH=".:$PATH"
# launch node loging output directly to syslog
export UV_THREADPOOL_SIZE=16
node lib/cdnboxd.js | logger -p local6.notice -t cdnboxd -u /run/systemd/journal/syslog &
