#!/bin/bash

curl --include --request PATCH http://localhost:4741/profiles/6 \
  --header "Authorization: Token token=BAhJIiVmM2FjOGRkZGU5OGJkMGRhZGYxNDI0NzBiMTRlYTlmZgY6BkVG--4d5aa395ad81c3d4a5975f91b113a5569ad8d8d5" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "user_name": "dunkeyguy",
      "given_name": "dan",
      "surname": "danielson"
    }
  }'
