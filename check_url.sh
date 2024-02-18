#!/bin/sh

URL="$URL_TO_CHECK"
FREQUENCY_CHECK="$FREQUENCY_CHECK_SECONDS"

while true; do
  # make request and store status
  STATUS=$(curl -s -o /dev/null -I -w "%{http_code}" "$URL")
  echo "$(date): L'URL $URL a retourné le statut HTTP $STATUS"
  sleep "$FREQUENCY_CHECK"
done
