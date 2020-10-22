#!/bin/bash

# Under Linux, /proc includes a directory for each running process, including kernel processes, 
# in directories named /proc/PID, where PID is the process number.
# Each directory contains information about one process

cd /proc
cd PID
cat status
watch -n0.1 'cat status | grep "voluntary"'          # to get updated info of the status of switches every 0.1s use watch



gedit | firefox                                     # opens both firefox and gedit but looses control from terminal
gedit &                                             # opens gedit but returns control to terminal



sudo fuser <PORT_NUMBER>/tcp                        # to find PID and other details of process running on particular PORT_NUMBER



# GRAPH PLOT
# xgraph is a utility to plot graphs depending on values in "filename.txt" as
#                                                            xval yval
#                                                              1 8.65
#                                                              2 8.81
xgraph filename.txt



# wget command
# GNU Wget is a computer program that retrieves content from web servers. It is part of the GNU Project. 
# Its name derives from World Wide Web and get. It supports downloading via HTTP, HTTPS, and FTP. 
# Its features include recursive download, conversion of links for offline viewing of local HTML, and support for proxies.

wget <URL>



# Reload .bashrc
# If we make changes to .bashrc, how to reload it without logging out and back in ?
source ~/.bashrc



# netstat
# REFERENCE : https://www.lifewire.com/netstat-command-2618098
# The netstat command, meaning network statistics,
# is a Command Prompt command used to display very detailed information about how your computer is communicating with other computers or network devices.
netstat -an | grep ":<port_number>"         # -n : Show numerical addresses instead of trying to determine symbolic host, port or user names.
                                            # -a : Show both listening and non-listening (for TCP this means established connections) sockets.
                                            
                                            
# lsof
# REFERENCE : https://www.geeksforgeeks.org/lsof-command-in-linux-with-examples/
# lsof command stands for List Of Open File. This command provides a list of files that are opened. 
# Basically, it gives the information to find out the files which are opened by which process.
lsof -u username                           # List all files opened by a user
lsof –i:<port_number>                      # Files opened by network connections


