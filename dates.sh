#!/bin/bash
#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "This script generates a list of dates between two given dates"
  echo ""
  echo "Usage:   $0 <start_date_as_YYYYMMDD> <end_date_as_YYYYMMDD>"
  echo "Example: $0 20200101 20200131"
  echo "NOTE: The start date should be the last day of preceding month"
  exit 1
fi

STARTDATE=$1
ENDDATE=$2

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
