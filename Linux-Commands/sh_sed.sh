#SOURCE : http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html

#NOTE : Sed is a Stream Editor used for modifying the files LINE by LINE ie operation is done on each line.

#NOTE : Delimiters can be changed as desired any character eg: use (_) as shown     :     sed 's_http://_www_' file.txt

# REPLACING
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

sed "s/[A-Z]/./g"                     # replace all occurrence of [A B C D E .... Z] in a line by "."

sed '/linux/ s/unix/centos/' file.txt   # looks for the lines which has "linux" and then replaces the word "unix" with "centos" on those lines only.



# DELETION
sed '2 d' file.txt                    # d deletes 2nd line as arg 2 passed

sed '5,$ d' file.txt                  # delete lines starting from 5 to end of a file



# PRINTING                           # p arg passed
sed 's/unix/linux/p' file.txt        # Duplicating the replaced line with p arg passed and not replaced line printed just once

sed -n 's/unix/linux/p' file.txt     # -n makes Printing only the replaced lines with p arg passed

sed 'p' file.txt                     # print each line of a file two times

sed -n '/unix/p' file.txt            # SAME AS   grep 'unix' file.txt        as p option used

sed -n '/unix/!p' file.txt           # SAME AS   grep -v 'unix' file.txt     as used !(NOT)p

sed -n "12,22 p"                     # Prints line number 12 to 22           as p used and -n used to prevent echoing

sed 'y/ul/Tk/' file.txt              # SAME AS   tr "ul" "Tk"                as y option used

sed '/unix/ a "Found"' file.txt      # Add a line of text after a match is found

sed '/unix/ i "Found"' file.txt      # Add a line of text before a match is found

sed '/unix/ c "Change line"' file.txt    # Change entire line with new text


