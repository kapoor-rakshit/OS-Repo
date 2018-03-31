#!/bin/bash

# Reference : https://www.tecmint.com/wc-command-examples/

# wc : The wc (word count) command in Unix/Linux operating systems is used to find out
#      number of newline count, word count, byte and characters count in a files specified by the file arguments


wc filename.txt  # output shows three numbers and string
                # (number of lines),(number of words) and (number of bytes) of the file. and filename

wc -l tecmint.txt   # number of lines from a given file

wc -w tecmint.txt   # count the words in a file

wc -c tecmint.txt   # total number of bytes

wc -m tecmint.txt   # number of characters

wc -L tecmint.txt   # length of longest (number of characters) line in a file