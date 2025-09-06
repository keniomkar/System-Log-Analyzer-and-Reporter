#!/usr/bin/bash

# log_collector.sh
# Collects Windows log lines containing ERROR or WARNING from a text file

LOG_SOURCE="system_logs.txt"   #specifying log file source
OUTPUT_FILE="filtered_logs.txt"  #output file to store filtered logs

# > is called output redirection
# created a file if doesnt exist, empty(truncate) a file if exist
> "$OUTPUT_FILE"  #ensuring file exist and is empty

#checking if the source log file exists
if [ ! -f "$LOG_SOURCE" ]; then
    echo "Log file not found: $LOG_SOURCE"
    exit 1    #script exit and system knows an error occured, (exit 1) means error
              #we cannot use only (exit) bcz the system only checks the status of last command
              #which is echo(echo always give exit status of 0) the system will think script is success but its not
         
fi



# filtering lines containing "error" or "warning" (case insensitive) and saving to OUTPUT_FILE
grep -i -E "ERROR|WARNING" "$LOG_SOURCE" > "$OUTPUT_FILE"
# -i for case insensitivity and -E for multi-word matching

#count the number of filtered lines and print
TOTAL_LINES=$( wc -l < "$OUTPUT_FILE" )
echo "Collected $TOTAL_LINES important log lines in $OUTPUT_FILE"
# wc is called word count, -l is for lines,-w for words and -c for characters

#END OF SCRIPT

