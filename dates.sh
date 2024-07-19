#!/bin/bash
STARTDATE=20241031 #LAST DATE OF PRECEDING MONTH
ENDDATE=20241130 # LAST DATE OF THE TARGET MONTH

d=
n=0
currentDate=""
until [[ "$currentDate" = "$ENDDATE" ]]; do 
  ((n++))
  # Calculate and format the current date without the day for comparison
  currentDate=$(date -d "$STARTDATE + $n days" "+%Y%m%d")
  # Keep the formatted date with day for display
  d=$(date -d "$STARTDATE + $n days" "+%Y-%m-%d %a" | cut -c1-12)
  echo $d
done
