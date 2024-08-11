#!/bin/bash

TO="a91144187@gmail.com"
SUBJECT="Security Alert"
BODY="email_body.html"
FROM_NAME="Google"
FROM_EMAIL="cyberhera2000@gmail.com"
FROM="$FROM_NAME <$FROM_EMAIL>"

# Create the email headers and body
{
  echo "From: $FROM"
  echo "To: $TO"
  echo "Subject: $SUBJECT"
  echo "MIME-Version: 1.0"
  echo "Content-Type: text/html; charset=UTF-8"
  echo "Content-Transfer-Encoding: 7bit"
  echo
  cat $BODY
} | msmtp --debug --from=default -t $TO

