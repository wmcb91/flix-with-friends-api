#!/bin/bash

curl --include --request POST http://localhost:4741/screenings \
  --header "Authorization: Token token=BAhJIiVmZTMwZTJhMzVkN2QxNjExMjRmYjYxODRkMDJmZDFmNgY6BkVG--ab2e5405cbee5334a4b6065d31de73f2be49f7e7" \
  --header "Content-Type: application/json" \
  --data '{
    "screening": {
      "user_rating": 5,
      "watched_recently": true,
      "movie_id": 9
    }
  }'


  INSERT INTO screenings
  (rating, watched_recently, user_id, movie_id) VALUES
  (5, true, 2, 3);
