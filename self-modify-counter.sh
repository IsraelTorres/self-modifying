#!/bin/bash
# Israel Torres
# self-modifying shell script (value counter)
# 20170405
# ./self-modify-counter.sh
# every time this file is run, it will increment the value below
# the original value started as 666 (six-six-six)
#
##################################################################################
value="666"
##################################################################################
echo -en "expect:\t666\n"
echo -en "value:\t$value\n"
##################################################################################
oldval=$(cat $0 | grep -m 1 'value=' | cut -d '"' -f 2)
newval=$((oldval + 1))
cat "$0" | sed "s/value=\"$oldval\"/value=\"$newval\"/1" > self-modify-counter-temp.sh
chmod +x self-modify-counter-temp.sh
mv self-modify-counter-temp.sh self-modify-counter.sh
##################################################################################
#
#EOF
