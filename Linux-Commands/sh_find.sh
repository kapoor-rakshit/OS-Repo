#!/bin/bash

# The command find searches the directory tree rooted at each given file name by evaluating the given expression.
# If no paths are given, the current directory is used. 
# If no expression is given, the expression -print is used.

# usage:  find [options] path [expressions]

find                                                      # running command without any options lists all files in current and sub directories

find -maxdepth 2                                          # -maxdepth : specifies how many sub directories (including current dir) it can descend. -maxdepth 1 means only cur dir.

find -empty                                               # -empty : empty files

find ! -empty                                             # ! : negate , i.e. here in example other than empty files

find -perm 0600                                           # -perm : files that are set with permission 0600 (octal)

find -size +1000c                                         # -size : files that are larger than 1000 bytes

find /home/usr -name "*.html"                             # -name : use of regex "*.html"

find /home/usr -type f -name "ch[0-9][0-9].pdf"           # -type : "d" for dir, "f" for regular files

find -user usrname                                        # -user : Find every file under cur dir owned by user "usrname".

find -mtime +60                                           # files modified more than 60 days ago
find -mtime 0                                             # files which have been modified in the last twenty-four hours.
                                                          # This command works this way, (initialization time when `find` is initialized (run) - file modification time) / 86400
                                                          # any remainder is discarded.  +n More than n | n Exactly n | -n Less than n.

