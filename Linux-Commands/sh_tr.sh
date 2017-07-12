# tr is an UNIX utility for translating, or deleting, or squeezing repeated characters. 
# tr stands for translate

tr [:space:] " "                   #A tr command stated at top of script will be applied on subsequent commands                    
<further commands>


# 1. convert lower case to upper case  OR  replace characters

echo "gotta grab it" | tr [:lower:] [:upper:]

echo "gotta it" | tr "abcde" "ZY"            #replace char a--Z , b--Y , c--Y , ...so on corresponding OR last char to be replaced
                                             #"abcde" ie first arg to be replaced   "ZY" second arg to replace with
                                             
echo "gotta catchem all" | tr "a-e" "Y-Z"    #we can specify range in asc order for replacements


# 2. translate from and to a file

tr "()" "[]" < inputfile.txt >> outputfile.txt


# 3. Translate white-space  AND  -s option to squeeze

echo "This i s   for     testing" | tr [:space:] "@"          #all whitespaces are translated to @

echo "This    i s    for testing" | tr -s [:space:] "@"       #-s squeezes repetition of characters ie multiple space is treated as one space

echo "This  is  for testing" | tr -s [:space:] " "           #multiple spaces to one space and replace with " "

tr -s '\n' ' ' < file.txt                                    #squeeze multiple \n to a single \n and replace \n to " " 


# 4. -d option to delete

 echo "the geek stuff" | tr -d 'thg'                        #delete characters 't' , 'h' and 'g' from given str
 
 echo "my username is 432234" | tr -d [:digit:]             #delete digits from str
 
 
 # 5. -c option to complement
 
 echo "my username is 432234" | tr -cd [:digit:]            #-d remove all characters  , -c except digits
 
 tr -cd [:print:] < file.txt > file.txt                     #remove all non-printable characters from a file and overwrite the file
  
 
