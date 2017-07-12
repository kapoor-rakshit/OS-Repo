# tr is an UNIX utility for translating, or deleting, or squeezing repeated characters. 
# tr stands for translate

# 1. convert lower case to upper case  OR  replace characters

echo "gotta grab it" | tr [:lower:] [:upper:]

echo "gotta it" | tr "abcde" "ZY"            #replace char a--Z , b--Y , c--Y , ...so on corresponding OR last char to be replaced
                                             #"abcde" ie first arg to be replaced   "ZY" second arg to replace with
                                             
echo "gotta catchem all" | tr "a-e" "Y-Z"    #we can specify range in asc order for replacements


# 2. translate from and to a file

tr "()" "[]" < inputfile.txt >> outputfile.txt


# 3. Translate white-space

echo "This is for testing" | tr [:space:] "@"

echo "This is for testing" | tr -s [:space:]    # -s squeezes repetition of characters
