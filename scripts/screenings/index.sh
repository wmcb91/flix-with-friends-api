#!/bin/bash

curl --include --request GET http://localhost:4741/screenings \
  --header "Authorization: Token token=(token)"
