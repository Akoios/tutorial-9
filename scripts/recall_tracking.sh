#!bin/bash
# Simple script to track the recall and send alerts

recall=$(curl -X GET "https://services.demo.akoios.com/bcc/get_recall" -H "accept: application/json")

threshold=0.9

if (( $(echo "$recall < $threshold" |bc -l) )); then
  curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd --mail-from 'mail@mail.com' --mail-rcpt 'mail@mail.com' --user 'mail@mail.com:Password' -T "mailcontent.txt"
fi