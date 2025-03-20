#!/bin/bash
#Take in User input from cli
dir="$1"

log_archive=log_archive_"$(date '+%Y%m%d_%H%M%S').tar.gz"
#compress directory using tar and save in new dir
tar -czvf $log_archive $dir 
cp $log_archive 

#Append the date and time to the new tar file