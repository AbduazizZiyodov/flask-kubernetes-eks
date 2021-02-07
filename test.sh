export HOST="3.133.98.33"
export TOKEN=`curl -d '{"email":"test@gmail.com","password":"password"}' -H "Content-Type: application/json" -X POST ${HOST}/auth  | jq -r '.token'`
curl --request GET ${HOST}:80/contents -H "Authorization: Bearer ${TOKEN}" | jq