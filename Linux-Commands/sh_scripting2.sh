#!/bin/bash                        #known as shebang because "hash"+"! (bang)" to notify which shell to use

a=200
b=30

#OPERATORS
#arithmetic  :  All evaluation of an expr is done in backticks (``)
#NOTE : The SPACE must be left bw operator and operands.

echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a / $b`          #(integer division)
echo `expr $a \* $b`         #(multiplication)
echo `expr $a % $b`

#A program to find average of n numbers with and without rounding of decimal values
read n
s=0
for ((i=1;i<=$n;i++))
do
read k
s=`expr $s + $k`
done
echo "scale=3;$s/$n"|bc -l                    #scale and bc -l together will TRUNCATE result upto required decimal place
                                              #bc is bench calculator

printf %0.3f $(echo "$s/$n"|bc -l)            #printf will ROUND up the result to higher decimal value


#relational : All evaluation is done in [] ie [(SPACE)<your query>(SPACE)]

#Used with conditional statements : ie    if [] then....  elif [] then....  else....   fi

#-eq : equal      (==)
#-ne : not equal  (!=)
#-gt : greater (>)
#-lt : lesser  (<) 
#-ge : greater or equal (>=)
#-le : lesser or equal  (<=)

echo `expr $a == $b`             #output : 0 (false)
echo `expr $a != $b`             #output : 1 (true)

if [ $a -eq $b ]                 #equal -eq
then
	echo "same hai"
elif [ $a -ne $b ]               #not_equal -ne
then
	echo "same nahi hai"
else
	echo "pata nahi"
fi


#boolean

#-o : logical OR  (||)
#-a : logical AND (&&)
#!  : negate      (~)


#string
#if a="kapoor" and b="github"

#=  : equal                [ $a = $b ]
#!= : not equal            [ $a != $b ]
#-z : zero len             [ -z $a ]
#-n : nonzero len          [ -n $a ]
#   : str if nonzero len   [ $a ]


#file test operators  :  https://www.tutorialspoint.com/unix/unix-basic-operators.htm



#DECISION MAKING
#1) if [] then.... elif [] then..... fi

#2) case....esac

a="India"

case $a in
	"INDIA")echo "INDIA in upper";;
	"india")echo "india in lower";;
	*)echo "Nothing found";;	
esac



#LOOPS
#1) for loop  :  for (()) do.....done 
for ((i=1;i<=8;i++))
do
	echo -n "$i "                     #prevents echo to generate newline \n character
done
echo

for i in "kapoor" "rakshit" "NITJ" "WIPRO" #traverse the given list
do
	echo -n "$i  "
done
echo

for i in $HOME/.bash*                    #display all the files starting with .bash and available in home
do
	echo $i
done


#2) while loop  :  while [] do.....done
while read word
do
	arr=("${arr[@]}" "$word")        #append to array while ctrl + D is pressed ie EOF reached
done
echo ${arr[@]}

a=0
while [ $a -lt 8 ]
do
       echo "Know yourself"
       a=`expr $a + 1`       
done

#3) until loop  :  until [] do....done

#4) select loop : select <listofoptions> do.....done
#   list of options provided....press the desired number to execute

select DRINK in tea cofee water juice appe all none
do
case $DRINK in
	"tea" | "cofee" | "water" | "all")echo "Go to canteen";;
        "juice" | "appe")echo "Available at home";;
	"none")break ;;
	*) echo "ERROR: Invalid selection";;						    
esac 
done
		                                                                            


#LOOP CONTROLS
#break  and  continue
#break n  and  continue n             : to break or continue from/to nested nth loop
