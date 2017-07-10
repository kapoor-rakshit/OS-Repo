#!/bin/bash

#-e enables the interpretation of escape sequences
#-E disables interpretation of escape sequences

#\\ : backslash
#\a : alert
#\b : backspace
#\c : suppress trailing newline ie next echo will be in same line
#\f : form feed
#\n : newline
#\r : carriage return ie make the cursor point to beginning of line
#\t : horizontal tab
#\v : vertical tab

#All commands are given in backticks `<your command>`
#Anything written after \ will be echoed as a stand alone ie echo "\$1200" will give output : $1200

echo -e "working on substitutions \a gotta on `date`"

echo "`who | wc -l` are logged in currently"
echo "`date ; uptime ; who`"                            #more than one command given by use of ; (semicolon)
                                                                            
