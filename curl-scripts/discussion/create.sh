#!/bin/bash

curl "http://localhost:4741/discussions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "discussion": {
      "college_id": "'"${COLLEGEID}"'",
      "user_id": "'"${USERID}"'",
      "interest_id": "'"${INTERESTID}"'",
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
