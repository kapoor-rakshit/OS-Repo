# SOURCE : https://www.tutorialspoint.com/unix/unix-pipes-filters.htm


#a pipe ie a vertical bar (|) on the command line between two commands
#The name "grep" comes from the ed (a Unix line editor) command g/re/p which means “globally search for a regular expression and print all lines containing it”.
#Options
# -v : Prints all lines that do not match pattern.
# -n : Prints the matched line and its line number.
# -l : Prints only the names of files with matching lines.
# -c : Prints only the count of matching lines.
# -i : Matches either upper or lowercase.

ls -l | grep -i -c "Jul"


#The sort command arranges lines of text alphabetically or numerically. 
#Options
# -n : Sorts numerically (example: 10 will sort after 2), ignores blanks and tabs.
# -r : Reverses the order of sort.
# -f : Sorts upper and lowercase together.
# +x : Ignores first x fields when sorting.

sort testfile.txt
