#! /bin/bash
figlet project1

read -p "Click 1 for Embed Or click 2 for Extract:" A

if [ $A == 1 ]
then

read -p "Enter Hidden filename:" filename
read -p "Enter Messege:" mess 
read -p "Enter Image file:" image
read -p "Enter passkey:" pass

echo  $mess >>  $filename

if [ -f  $image ]
then


figlet Embed


steghide embed -ef $filename -cf $image -p $pass  

else

echo "ND"


fi

fi

if [ $A == 2 ]
then

read -p "Enter Image file:" img
read -p "Enter passkey:" passwrd

if [ -f $img ]
then

steghide extract -sf $img 

else

echo "Not Done"

fi

fi
