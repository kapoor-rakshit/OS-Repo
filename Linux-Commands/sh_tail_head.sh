# tail outputs the last part, or "tail", of files.

tail -n 20 file.txt                          # Outputs last 20 lines of file

tail -c 20 file.txt                          # Outputs last 20 characters of file

tail -n +30 file.txt                            # beginning with 30th line, print all lines to end

tail -f messages.log                         # read and display message simultaneouly as some other prog is writing to it
                                             # to abort    :    ctrl + c
                                             
ls -lh | tail -n 20                          # ls piped to last 20 lines of info



# head outputs the first part of files.

head -n 20 file.txt                          # Outputs first 20 lines

head -c 20 file.txt                          # Outputs first 20 characters

head -n -20 file.txt                         # Outputs all but last 20 lines of file as -20 used

head -c -20 file.txt                         # Outputs all but last 20 characters of file as -20 used

head -n 20 file1.txt file2.txt               # Outputs first 20 lines of each file1 and file2
