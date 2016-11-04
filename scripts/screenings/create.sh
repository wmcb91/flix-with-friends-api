#!/bin/bash

curl --include --request POST http://localhost:4741/screenings \
  --header "Authorization: Token token=(token)" \
  --header "Content-Type: application/json" \
  --data '{
    "screenings": {
      "rating": 5,
      "watched_recently": true,
      "user_id": 2
      "movie_id": 3
    }
  }'


  INSERT INTO screenings
  (rating, watched_recently, user_id, movie_id) VALUES
  (5, true, 2, 3);
