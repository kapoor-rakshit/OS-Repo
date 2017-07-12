sort file.txt                                # sorts the file in alphabetical order.


# -u option
sort -u file.txt                             #sorts and removes duplicates


# -n option
sort -n file.txt                             #sorts considering the text as numbers


#-r option                                   #descending or reverse order
sort -nr file.txt


# The -ks,e     is the starting (s) and ending (e) index provided to -k option 
# The -t specifies the delimiter in file
sort -t $'\t' -k2nr,2 -k1,1 file.txt         # sort the file with delimiter $'\t' acc to key column 2 reverse,numerical and key column 1 alphabetically

sort -nr -t $'\t' -k2,2 file.txt             # same as above. The -nr options can be specified outside if commonn to all keys columns            

sort -t "|" -k2nr,2 file.txt                 # sort file with delimiter "|" acc to 2 key column reverse,numerical

sort -t"," -k1,2 -k3n,3 file                 #delimiter is "," acc to key col start=1 and end=2 alphabetically and key column 3 numerically


# sort multiple files ie data from all files is considered together to sort on numerical values
sort -n file1.txt file2.txt

