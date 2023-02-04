#!/bin/bash

if [[ -f "file.txt" ]]
then
    echo "The file exists"
else
    echo -e "The file does not exist\nCreating file.txt"
    cat > file.txt << EOF
    This is file was
    created from a heredoc
    in a bash script
EOF
fi