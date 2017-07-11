#!/bin/bash

# DEFINITION
func1(){
echo "hello first func to add $1 numbers"      #Access the args passed using $1 $2 $3 ...so on
s=0
for i in ${!2}                                 #Used double reference for array passed
do
s=`expr $s + $i`
done

func2                                          #nested functions

return $s                                      #Return from function
}

func2(){
echo "hello from second"
}

# CALL
read -a arr
func1 ${#arr[@]} arr[@]                        #Pass args to a function , IMPORTANT : HOW TO PASS ARRAY,here it is passed as string

ret=$?                                         #capture value returned by last command
echo "Sum is $ret"

#IMPORTANT
#CALL from SHELL TERMINAL

#use [dot][space]<filename> ie    . example.sh

#this causes all the definitions inside the file to be read and defined to current shell

#now call the desired function to execute ie    func1

#unset <functionname>                        #removes the function definition from shell not from file

                                                                              
