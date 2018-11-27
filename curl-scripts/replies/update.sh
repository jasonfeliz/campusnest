#!/bin/bash

curl "http://localhost:4741/replies/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "reply": {
      "body": "'"${BODY}"'"
    }
  }'

echo
