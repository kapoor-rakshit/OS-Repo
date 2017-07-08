#The pr command does minor formatting of files on the terminal screen or for a printer.
#                         pr option(s) filename(s)
#Complete options at : https://www.tutorialspoint.com/unix/unix-basic-utilities.htm 

cat testfile.txt
pr -2 testfile.txt

#The command lp or lpr prints a file onto paper as opposed to the screen display. 
#Once you are ready with formatting using the pr command, use them to print from printer connected to PC

#Output : request id is laserp-525  (1 file)

#Use   lp -n3 testfile.txt    to have 3 copies

lp testfile.txt

#The lpstat command shows what's in the printer queue: request IDs, owners, file sizes, when the jobs were sent for printing, and the status of the requests.

#Use lpstat -o if you want to see all output requests other than just your own.

lpstat -o
lpq

#The cancel command terminates a printing request from the lp command. 

#The lprm command terminates all lpr requests.
#You can specify either the ID of the request (displayed by lp or lpq) or the name of the printer.

# Example : cancel laserp-525     //request id specified
#         : cancel laserp        //request id not specified, so ongoing request cancelled
#         : lprm 525             //cancels and returns filenames cancelled



#SENDING EMAILS
# mail -s "subject" -c "cc-addr" -b "bcc-addr" "to-addr"

#You can send a complete file using a redirect < operator as follows:-
# $mail -s "Report 05/06/07" admin@yahoo.com < demo.txt 

#To check incoming email at your Unix system, you simply type email as follows −
# $mail
