#!/usr/bin/env bash

timeout=20
counter=0
server_address="http://localhost:8000"
server_ready="NO"

check_server() {
  curl --output /dev/null --silent --head --fail ${server_address};
  exit_code=$?

  if [[ ${exit_code} -eq 0 ]]; then
    server_ready="YES"
  fi
}

echo "Waiting max ${timeout} seconds for the server ('npm start' needs to be running in another session)"

while [[ ${counter} -le ${timeout} ]]; do
  check_server

  if [[ "${server_ready}" = "YES" ]]; then
    break
  fi

  counter=$((counter+1))
  printf '.'
  sleep 1
done

echo ""

if [[ "${server_ready}" != "YES" ]]; then
  echo "Could not connect to ${server_address}, is 'npm start' running in another session?"
  exit 9
fi

for file in slides/**/*.html; do
  slide_name=`echo $file | sed -n -e 's/^slides\/\(.*\)\/index.html/\1/p'`
  `npm bin`/decktape automatic http://localhost:8000/$file $slide_name.pdf
done
