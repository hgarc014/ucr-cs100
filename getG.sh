

DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
I=0
FILENAME="class.$DATE"
TEMP=removeMe

echo -e "grades of class as of $DATE $TIME\n" > $FILENAME

for file in people/students/*;
do
    echo "$I: ${file##*/}"
    scripts/./calcgrade.sh ${file##*/} > $TEMP
    echo "${file##*/}" >> $FILENAME
    sed -n '32,35 p' $TEMP >> $FILENAME
    let I=$I+1
done

echo -e "\n$I total" >> $FILENAME
rm $TEMP

#old file testing
#I=0
#LINE="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|||||||||||||||||||||||||||||||||||||||||"
#FILENAME="tempGrades"
#MAXWAIT=10
#
#> $FILENAME
#
#for file in people/students/*;
#do
#    echo "$I: ${file##*/}"
#    echo -e "\n\n$LINE" >> $FILENAME
#    echo "$LINE  Index: $I" >> $FILENAME
#    echo -e "$LINE\n\n" >> $FILENAME
#    scripts/./calcgrade.sh ${file##*/} >> $FILENAME
#
#    let I=$I+1
#done
#
#echo "going to delete $FILENAME in $MAXWAIT seconds"
#
#for TIME in `seq 1 $MAXWAIT`;
#do
#    echo $TIME
#    sleep 1
#done
#
#echo "deleting $FILENAME folder..."
#sleep 2
#rm tempGrades
#echo "$FILENAME deleted"


