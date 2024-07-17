#!/bin/bash
STARTDATE=20241031 #LAST DATE OF PRECEDING MONTH
ENDDATE=20241130 # LAST DATE OF THE TARGET MONTH

d=; n=0; until [ "$d" = "$ENDDATE" ]; do ((n++)); d=$(date -d "$STARTDATE + $n days" "+%Y%m%d %a"); echo $d; done | sed -E 's/([0-9]{4})([0-9]{2})([0-9]{2})/\1-\2-\3/g' | cut -c1-12
