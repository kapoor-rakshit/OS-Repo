#WORKING with paste on a single file

# 1. paste command without any options is as good as the cat command.
paste < file.txt

# 2. -s option and -d option
paste -s -d ";" < file.txt          #-s joins all lines of a file    #-d specifies delimiter between lines to join
                                                                     #if -d not specified default delimiter is tab
                                                                   
# 3. - - option
# The '-' reads a line from the standard input. Two '-' reads 2 lines and pastes them side by side. Three '-' reads 3 lines and so on
paste - - < file.txt

# 4. -d option
paste -d ";:" - - - < file.txt     #-d spcifies the delimiter between columns formed
                                   #-d takes multiple values first arg (;) will separate 1 and 2 column , (:) will separate 2 and 3 column
                                   


#WORKING with paste on multiple files

# 1. paste command is used to merge multiple files side by side
paste file1 file2

# 2. -d option
paste -d ";" file1 file2           #separate content by ;
paste -d "\n" file1 file2          #alternative output from files
