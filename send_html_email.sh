TO="iamrosemary237@gmail.com"
SUBJECT="Security Alert"
BODY="email_body.html"
FROM_NAME="Google"
FROM_EMAIL="iamrosemary237@gmail.com"
FROM="$FROM_NAME <$FROM_EMAIL>"

# Create the email headers and body
{
  echo "From: $FROM"
  echo "To: $TO"
  echo "Subject: $SUBJECT"
  echo "Content-Type: text/html"
  echo
  cat $BODY
} | msmtp --debug --from=default -t $TO
