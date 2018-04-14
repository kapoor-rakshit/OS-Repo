#!/bin/bash

# ps
# The ps command produces a list of the currently running processes on your computer.

ps       # output  :   PID   TTY   Time   Command

ps -A   # To view all the running processes
ps -e   # To view all the running processes

ps T    # to see only the processes associated with this terminal

ps -p 1234,4567   # -p : process with specified PIDs (multiple values are comma separated)

ps -C bash        # -C : process with specified command name

ps U usrname      # U  : process initiated by user usrname



# pstack
# print a stack trace of a running process



# pmap
# pmap command display the memory usage map of a process or multiple processes.
# pmap reports information about the address space or memory usage map of a process. 

pmap 9994 9998       # PID or unique process IDs of running process



# strace
# strace monitors the system calls and signals of a specific program.
# It is helpful when you do not have the source code and would like to debug the execution of a program.
# strace provides you the execution sequence of a binary from start to end.



# ltrace
# A library call tracer
# ltrace is a program that simply runs the specified command until it exits.
# It intercepts and records the dynamic library calls which are called by the executed process and the signals which are received by that process.
# It can also intercept and print the system calls executed by the program.



# top
# top command is used to show all the running processes within your Linux environment.
top     # output  :  uptime , no. of users , load avg , tasks , memory
        # the highlighted row(s) is/are currently running process

# shift + m       : sort by memory
# shift + p       : sort by %cpu
# shift + t       : sort by time
# x               : highlight coloumn with which sorted
# z               : toggle color
# q               : exit
# h               : help

