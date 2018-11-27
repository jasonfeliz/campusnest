#!/bin/bash

curl "http://localhost:4741/replies" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "reply": {
      "user_id": "'"${USERID}"'",
      "discussion_id": "'"${DISCUSSIONID}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
