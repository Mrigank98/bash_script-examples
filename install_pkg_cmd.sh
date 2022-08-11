#!/usr/bin/env bash



if [[ $(id -u) -eq 0 || $(sudo -v) -ne 0 ]]

then  

     echo "you are not authorized user to perform this activity, please perform activity if you have sudo access"

     exit 1 

fi

if [[ $# -eq 0 ]]
then

    echo "pleae provide arguments, usage: $0 pkg1,pkg2.."

    exit 2
fi

for each in $@
do 

    if which $each &> /dev/null

    then

          echo -e "$each editor is already installed in this system\nthe path for vim is: $(which $each)"

    else 

          echo "installing $each..."

          sudo apt-get $each -y 



          if [[ $? -eq 0 ]]

          then

               echo "$each is now successfully installed "

          else

               echo "$each is unable to installed , kindly check logs and try again"

            fi

    fi
done
