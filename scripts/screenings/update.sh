#!/bin/bash

curl --include --request PATCH http://localhost:4741/screenings/4 \
  --header "Authorization: Token token=(token)" \
  --header "Content-Type: application/json" \
  --data '{
    "screenings": {
      "rating": 5,
      "watched_recently": true
    }
  }'
