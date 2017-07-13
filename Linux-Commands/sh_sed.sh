#SOURCE : http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html

# Sed is a Stream Editor used for modifying the files in unix (or linux)

#NOTE : Delimiters can be changed as desired any character eg: use (_) as shown     :     sed 's_http://_www_' file.txt

# 1. REPLACING
sed 's/unix/linux/1' file.txt        #  "s" specifies the substitution operation. The "/" are delimiters
                                     #  "unix" is the search pattern and the "linux" is the replacement string
                                    
sed 's/unix/linux/2' file.txt        # 2 occurrence of "unix" with "linux" only replaced as arg 2 passed

sed 's/unix/linux/g' file.txt        # all occurrences as arg g passed

sed 's/unix/linux/3g' file.txt       # Replacing from nth (here 3rd) occurrence to all occurrences in a line.

sed 's/unix/linux/3gi' file.txt      # i arg makes case insensitive operations

