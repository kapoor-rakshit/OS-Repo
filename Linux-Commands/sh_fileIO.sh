#!/bin/bash

#File desriptors use :
#0 for STDIN
#1 for STDOUT
#2 for STDERR

#Write to a file
echo "Overwritten on `date`" > content.txt   # > overwrites the existing content of file
echo "Appended on `date`" >> content.txt     # >> appends to file

#Read from a file
wc < content.txt                             #Uses the contents of content.txt to act on wc command
wc content.txt                               #shows filename with results


#HERE Document
# HERE document is used to redirect input to an interactive shell script or program without providing user input
#Following codes can be written on prompt itself :

#1) wc -l << finish                        #"finish" is a delimiter which can be single word without any whitespace
  # Hello working at WIPRO
  # What abt you ?
  # finish                                 #OUTPUT : 2


# A session can be run with vi editor and save input in the file
#2) filename=test.txt
  # vi $filename << finish
#   i
 #  written using HERE doc
#   ^[
#   ZZ
#   finish


#DISCARD OUTPUT : To execcute the command but donot show the OUTPUT on screen or file

echo "`uptime`" > /dev/null            #/dev/null is a file that discards all input

echo "`upt`" > /dev/null               #STDERR will be displayed but not STDOUT

echo "`upt`" > /dev/null 2>&1          #STDERR and STDOUT both prevented from display  (not working)

echo "hello printing STDOUT as STDERR" 1>&2     #Make STDOUT on STDERR                 (not working)

"sh_fileIO.sh" 46L, 1478C                                                                                                                  
