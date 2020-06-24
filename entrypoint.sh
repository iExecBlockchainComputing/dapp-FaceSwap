#!/bin/bash

echo "APP RUNNING";
echo;

echo "INPUT DIRECTORY CONTENT";
ls -a /iexec_in;
echo;

echo "OUTPUT DIRECTORY INITIAL CONTENT";
ls -a /iexec_out;
echo;

echo "READING IEXEC ARGS";
args=$@
echo $args;
echo;

echo 'READING IEXEC RUNTIME VARIABLES';
echo ' - IEXEC_INPUT_FILES_FOLDER='$IEXEC_INPUT_FILES_FOLDER;
echo ' - IEXEC_NB_INPUT_FILES='$IEXEC_NB_INPUT_FILES;
if [ "$IEXEC_NB_INPUT_FILES" -ge 1 ]; # print IEXEC_INPUT_FILE_NAME_X
then
    i=1;
    while [ $i -le $IEXEC_NB_INPUT_FILES ]
    do
       name='IEXEC_INPUT_FILE_NAME_'$i
       eval "value=\"\$$name\""
       echo '     - '$name=$value
       i=`expr $i + 1`
    done
fi
echo ' - IEXEC_DATASET_FILENAME='$IEXEC_DATASET_FILENAME;
echo ' - IEXEC_BOT_SIZE='$IEXEC_BOT_SIZE;
echo ' - IEXEC_BOT_FIRST_INDEX='$IEXEC_BOT_FIRST_INDEX;
echo ' - IEXEC_BOT_TASK_INDEX='$IEXEC_BOT_TASK_INDEX;
echo;


FILE1=/iexec_in/$IEXEC_INPUT_FILE_NAME_1
FILE2=/iexec_in/$IEXEC_INPUT_FILE_NAME_2
cd FaceSwap-master/
python main.py --src $FILE1 --dst $FILE2 --out /iexec_out/output.jpg --correct_color --no_debug_window

echo "CREATING determinism.iexec IN /iexec_out/";
echo $args$IEXEC_DATASET_FILENAME$IEXEC_NB_INPUT_FILES > /iexec_out/determinism.iexec && echo "done";
echo;

echo "OUTPUT DIRECTORY FINAL CONTENT";
ls -a /iexec_out;
echo;

echo "FINISH";
