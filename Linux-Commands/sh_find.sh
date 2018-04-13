#!/bin/bash

# The command find searches the directory tree rooted at each given file name by evaluating the given expression.
# If no paths are given, the current directory is used. 
# If no expression is given, the expression -print is used.

# usage:  find [options] path [expressions]


find /home/usr -name "*.html" -print                      # name like "*.html"

find /home/usr -type f -name "ch[0-9][0-9].pdf" -print    # -type "d" for dir, "f" for regular files

find -user usrname                                       # Find every file under cur dir owned by user "usrname".

find -mtime +60                                          # files modified more than 60 days ago

find -mtime 0

# files which have been modified in the last twenty-four hours.
# This command works this way because the time since each file was last modified is divided by 24 hours and any remainder is discarded.

