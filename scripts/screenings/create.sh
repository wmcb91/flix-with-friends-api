#!/bin/bash

curl --include --request POST http://localhost:4741/screenings \
  --header "Authorization: Token token=BAhJIiUxNWIwMTFkNzgwNTg3NTI5N2U2NTQwMWMxZDFkYzI4MAY6BkVG--178c0ca881980405ffcaa644fdac5a344b9924f5" \
  --header "Content-Type: application/json" \
  --data '{
    "screening": {
      "rating": 5,
      "watched_recently": true,
      "movie_id": 2
    }
  }'


  INSERT INTO screenings
  (rating, watched_recently, user_id, movie_id) VALUES
  (5, true, 2, 3);
