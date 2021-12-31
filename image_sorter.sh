#!/usr/bin/zsh

echo Running image sorter script...

# GEO=$(identify -verbose $1 | grep "geometry")

# RES=$(echo $GEO | grep -o "2560x1440")

# echo $RES

# mkdir $RES

# mv $1 $RES/$

for FILE in wallpapers/*;
do
    echo $FILE
    GEO=$(identify -verbose $FILE | grep "geometry")
    RES=$(echo $GEO | grep -o -E "[0-9]{4}x[0-9]{3,4}")
    if [[ ! -d $RES ]] && 
    then
       # mkdir $HOME/wallpapers/$RES
       echo "Try to create directory $RES"
       mkdir $RES
    fi
    mv $FILE $RES/ 
done


