#!/bin/bash

curl --include --request POST http://localhost:4741/screenings \
  --header "Authorization: Token token=BAhJIiU5NTE5NmRiYzUxOTIyZTA4OTNhMzUxZDJmYjBkNjM2NAY6BkVG--56d992b36dcce66d6527417cfb8adf68e032d53c" \
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
