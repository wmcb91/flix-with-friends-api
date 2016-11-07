curl --include --request POST http://localhost:4741/profiles \
  --header "Authorization: Token token=BAhJIiVmODZlNzIxODViMzk1ZWFkYWEwYjVjMzdhMjI1N2RjZAY6BkVG--57ade8353b4461923b9254de52a95fa30b73a677" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "user_name": "dandman123",
      "given_name": "dan",
      "surname": "daniels"
    }
  }'
