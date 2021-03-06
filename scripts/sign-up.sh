API="${API_ORIGIN:-https://ga-library-api.herokuapp.com}"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode '{
    "credentials": {
      "email": "'"${EMAIL}"'"
      "password": "'"${PASSWORD}"'"
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
