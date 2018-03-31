#!/bin/bash

# df :  The ‘df‘ command stand for “disk filesystem".
#       summary of available and used disk space usage of file system on Linux system.

	df             # The “df” command displays the information of device

	df -a          # -a : information of dummy file systems along with all the file system

	df -h          # -h : human readable format

	df -hT /home/rakshit  # -T : show file system type

	df -iT                 # -i : information of number of used inodes

	df -t ext4             # -t : display certain file system type

	df -x ext4             # -x : display file system type that doesn’t belongs to "ext4" type



# du : “du” (Disk Usage) 
#       to check the information of disk usage of files and directories on a machine

	du OS/                 # displays the number of disk blocks in the  dir along with its sub-directories.

	du -sh OS/             # -s : summary of a grand total disk usage size

	du -ah                  # -a : all files/dirs

	du -cah                # -c : provides a grand total usage disk space at the last line. 

	du -cah --time OS/     # --time : disk usage based on modification of time

	du -cah --exclude="*.txt" OS/   # --exclude : excludes the files that matches given pattern.

	du -cah --exclude="*.txt" --exclude="*.pdf" OS/    # to exclude multiple, use --exclude again