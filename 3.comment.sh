#!/bin/sh

# This is a comment
echo "Always use comments in your scripts"

# This comments multiple lines
<<EOF
You are 
not going
to see
this!
EOF

: '
This also comments
multiple 
lines
'

echo "Did any of those lines show?"