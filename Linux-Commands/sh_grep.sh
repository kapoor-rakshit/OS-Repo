# SOURCE : https://www.tutorialspoint.com/unix/unix-pipes-filters.htm


#a pipe ie a vertical bar (|) on the command line between two commands
#The name "grep" comes from the ed (a Unix line editor) command g/re/p which means “globally search for a regular expression and print all lines containing it”.

# Options
# -v : Prints all lines that do not match pattern.
# -n : Prints the matched line and its line number.
# -l : Prints only the names of files with matching lines.
# -c : Prints only the count of matching lines.
# -i : Matches either upper or lowercase.
# -w : matches by treating the "arg" as a WORD to be searched and not as a SUBSTRING of any word

# Metacharacters
# f...l : (dot) represents a character
# f*fox : (asterisk) one or more
# ^word : (carat) matches lines in file that STARTS with "word"
# word$ : (dollar) matches lines in file that ENDS with "word"
# f\\.t : (\\) cancel meaning of metacharacter, here "." acts as a symbol not as a metacharacter, so search has f.t only, not fit or fat
# []    : (range operator)   eg: a[df]b , a followed by one char either "d" or "f" followed by b
#                                a[^df]b , a followed by one char neither "d" nor "f" followed by b
 #  [:lower:] or [a-z]                       char with lowercase
 #  [:upper:] or [A-Z]
 #  [:alpha:] or [a-zA-Z]
 #  [:digit:] or [0-9]
 #  [:alnum:] or [a-zA-Z0-9]
 #  [:blank:]
# --color : highlights the search

grep “fast*host” index.html         # with “fast”"anything in-between"“host” 

grep “linux” file*.*                #  all files with file1.txt, file2.txt and along with different extensions too like file1.html, file2.php and so on.

ls -l | grep -i -c "Jul"

grep -w "the" file.txt              #searches the word "the" and echo that line, not work for "there" as it has "the" as SUBSTRING not a word

grep -w "color\|rang\|rangeen" file.txt   #search for more than one keyword

