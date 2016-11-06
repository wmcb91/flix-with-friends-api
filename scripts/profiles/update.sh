#!/bin/bash

curl --include --request PATCH http://localhost:4741/profiles/4 \
  --header "Authorization: Token token=BAhJIiU5NTE5NmRiYzUxOTIyZTA4OTNhMzUxZDJmYjBkNjM2NAY6BkVG--56d992b36dcce66d6527417cfb8adf68e032d53c" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "user_name": "dunkeyguy",
      "given_name": "Will",
      "surname": "Williams"
    }
  }'
