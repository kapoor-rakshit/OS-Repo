#!/bin/bash

#SOURCE : http://www.thegeekstuff.com/2010/06/bash-array-tutorial/

#Local Variables − A local variable is a variable that is present within the current instance of the shell. 
#Environment Variables − An environment variable is available to any child process of the shell.
#Shell Variables − A shell variable is a special variable that is set by the shell.

a=10                              #variable
read b                            #read from std input
read -p "ENTER VALUE OF b :" b    #generates message with reading of input
readonly a                        #make the variable unchangeable, an error occurs while trying to change the value

c=15
echo "c is $c"
unset c                          #removes the var from list of vars that shell tracks

echo "a is $a"
echo "b is $b"
echo "c is $c"                   #output : c is 

unset a                          #error
a="Jai Hind"                     #error

echo "a is $a"                   #output : a is 10

echo ${a:1:3}                    #output : start from 1 index of string and echo next 3 characters

#SPECIAL VARIABLES
echo "$$"                        #PID of current shell

echo "$0"                        #filename of current script
echo "$1"                        #$1, $2,... so on refers to args with which script was invoked

#shift functionality
echo "$1"                        #first arg
shift
echo "$1"                        #second arg, is now at 1 index, as "shift" left shifts args

echo "$# arg passed"             #number of arguments passed
echo $*
echo $@

ls -l "$*"                       #input args are file use "$*"/"$@" in double quotes for command to act on
ls -l "$@"                       #eg : ./file.sh argfile.txt "my file.txt"     NOTE : File name with space is in ""

for arg in $*                    #takes the entire list as one argument with spaces between
do
	echo $arg
done

for arg in $@                    #takes the entire list and separates it into separate arguments.
do
	echo $arg
done

echo "$?"                        #exit status of last command
echo "$!"                        #process no. of last background command

#DOUBLE REFERENCE IS IMPORTANT IN PASSING ARRAY TO FUNCTIONS
firstvar=458
secondvar=firstvar
echo "${secondvar}"            #OUTPUT : firstvar
echo "${!secondvar}"           #OUTPUT : 458     ie  indirect reference or double referenced


#ARRAYS
hdarr=("welcome_to_INDIA" 23 45 "INDIANS_ARE_BACK"  )      #hardcoded array, space separated

read -a arr                      #read from std input

echo "${arr[3]}"                 #val at 3 index if present
echo "${arr[*]}"                 #entire array
arr[3]="changed 3 index"         #manipulate at 3 index, rest remain intact
echo "${arr[2]}"                 
echo "${arr[@]}"                 #entire array
echo "${hdarr[2]}"

echo "len is ${#hdarr[*]}"               #length of array using #
echo "len of 2 index elem is ${#arr[2]}" #characters in 2 index element

echo "${hdarr[*]:1:5}"                  #start offset from index 1 and display 5 elements
echo "${hdarr[0]:1:10}"                #start from 1 character of 0th elem and display next 10 characters

for i in ${hdarr[@]}
do
	echo "$i"
done

read newelem
hdarr=("${hdarr[@]}" $newelem)         # hdarr = hdarr + $newelem   ie APPEND values
                                       #IMPORTANT : Use @ and not * to have individual elem of original array
k=${#hdarr[*]}
echo "len is now $k and added elem is ${hdarr[$k-1]}"

echo "${hdarr[4]}"

unset hdarr[2]                        #remove an element 
echo ${hdarr[@]}
echo len is ${#hdarr[@]}
unset hdarr                          #delete entire array

newarr=("${arr[@]:2:3}")             #copy array, constraints added here

arrnewarr=("${arr[@]}" "${newarr[@]}")   #concatenate arrays similar to APPEND values.
echo ${arrnewarr[@]}

arrayfromfile=(`cat "testfile.txt"`)                  #each line of file becomes an element
echo "${arrayfromfile[@]} len is ${#arrayfromfile[@]}"

