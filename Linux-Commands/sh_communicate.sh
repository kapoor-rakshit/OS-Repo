#1. The ping Utility
# The ping command sends an echo request to a host available on the network. 
# Using this command, you can check if your remote host is responding well or not.

# The ping command is useful for 
#Tracking and isolating hardware and software problems.
#Determining the status of the network and various foreign hosts.
#Testing, measuring, and managing networks.

ping github.com 
ping 127.0.0.1


#2. The ftp Utility
#This utility helps you upload and download your file from one computer to another computer.
#NOTE : all the files would be downloaded or uploaded to or from the current directories.

#Once you are authenticated, use commands like dir, get <file>, put <file>: https://www.tutorialspoint.com/unix/unix-communication.htm

ftp D-113132345
ftp 10.141.76.38


#3. The telnet Utility
#Telnet is a utility that allows a computer user at one site to make a connection, 
#login and then conduct work on a computer at another site.

telnet example.com


#4. The finger Utility
#The finger command displays information about users on a given host. The host can be either local or remote.

#Check all the logged-in users on the local machine
finger
#information about a specific user available on the local machine 
finger rakshit
#Check all the logged-in users on the remote machine
finger @10.141.76.38
#Get the information about a specific user available on the remote machine
finger user@10.141.76.38
