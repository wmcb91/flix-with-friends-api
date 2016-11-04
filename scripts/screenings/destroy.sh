#!/bin/bash

curl --include --request DELETE http://localhost:4741/screenings/5 \
  --header "Authorization: Token token=(token)"
