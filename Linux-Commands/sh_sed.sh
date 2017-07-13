#SOURCE : http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html

#NOTE : Sed is a Stream Editor used for modifying the files LINE by LINE ie operation is done on each line.

#NOTE : Delimiters can be changed as desired any character eg: use (_) as shown     :     sed 's_http://_www_' file.txt

# 1. REPLACING
sed 's/unix/linux/1' file.txt        #  "s" specifies the substitution operation. The "/" are delimiters
                                     #  "unix" is the search pattern and the "linux" is the replacement string
                                    
sed 's/unix/linux/2' file.txt        # 2nd occurrence "unix" with "linux" only replaced as arg 2 passed

sed 's/unix/linux/g' file.txt        # all occurrences as arg g passed

sed 's/unix/linux/3g' file.txt       # Replacing from nth (here 3rd) occurrence to all occurrences in a line.

sed 's/unix/linux/3gi' file.txt      # i arg makes case insensitive operations

sed 's/unix/{&&}/' file.txt          # search for the pattern and replace that pattern (&) by adding some extra characters ({}) to it
                                     # & represents the matched string. && makes {unixunix} to 1st occurrence of "unix"
                                   
sed -e 's/unix/linux/' -e 's/os/system/' file.txt      # -e allows multiple replacements

sed '3 s/unix/linux/' file.txt        # replacement on a specific line number (here 3)

sed '1,3 s/unix/linux/' file.txt      # replaces the lines with range from 1 to 3

sed '2,$ s/unix/linux/' file.txt      # replaces the text from second line to last line in the file.

sed '/linux/ s/unix/centos/' file.txt   # looks for the lines which has "linux" and then replaces the word "unix" with "centos" on those lines only.





# 2. PRINTING                        # p arg passed
sed 's/unix/linux/p' file.txt        # Duplicating the replaced line with p arg passed and not replaced line printed just once

sed -n 's/unix/linux/p' file.txt     # -n makes Printing only the replaced lines with p arg passed

