#!/bin/sed -f

/^#.*/d
s/^\s*//
s/ /\&\t/g
s/\./\&\./g
s/\(.*\)/\1\\\\/g
s/0000*1//g
s/9999*/9/g
