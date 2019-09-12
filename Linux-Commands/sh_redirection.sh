#!/bin/bash

#File desriptors use :
#0 for STDIN
#1 for STDOUT
#2 for STDERR

#Write to a file
echo "Overwritten on `date`" > content.txt   # > overwrites the existing content of file
echo "Appended on `date`" >> content.txt     # >> appends to file

#Read from STDIN and write to file
cat > filename.txt                           # read from stdin and write to file
                                             # press ctrl + D, to terminate further input
#Read from a file
wc < content.txt                             #Uses the contents of content.txt to act on wc command
wc content.txt                               #shows filename with results


#HERE Document
# HERE document is used to redirect input to an interactive shell script or program without providing user input
#Following codes can be written on prompt itself :

wc -l <<finish                        # "finish" is a delimiter which can be single word without any whitespace 
                                      # and without any space bw "<<" and "finish" (delim)
Hello working at WIPRO
What abt you ?
finish                                 # Terminate writing prog , OUTPUT : 2   no. of lines, as of command wc -l


# A session can be run with vi editor and save input in the file
filename=test.txt
vi $filename <<END
i
written using HERE doc
^[
ZZ
END                                   # Terminate writing prog as delim typed


# REDIRECTION : To execcute the command but donot show the OUTPUT on screen (STDOUT) or file

echo "`uptime`" > /dev/null            #/dev/null is a file that discards all input

echo "`upt`" > /dev/null               #STDERR will be redirected but not STDOUT as command not found

echo "hello printing STDOUT and STDERR" >> output_and_err.txt 2>&1    # & : redirect both STDOUT and STDERR to same file

echo "testing" 1> output.txt 2> err.txt                               # STDOUT to output.txt and STDERR to err.txt 
                                                                                                               
