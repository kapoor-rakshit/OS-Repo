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



# GRAPH PLOT
# xgraph is a utility to plot graphs depending on values in "filename.txt" as
#                                                            xval yval
#                                                              1 8.65
#                                                              2 8.81
xgraph filename.txt

