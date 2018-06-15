#!/bin/bash

BASE_URL='https://api.fifa.com/api/v1/picture/flags-fwc2018-5/'
DOWNLOAD_DIR='./logos/worldcup'
fifa_codes=$(curl http://worldcup.sfg.io/teams | jq '.[]["fifa_code"]' | tr -d '"');
echo $fifa_codes
for team in $fifa_codes;
do
	curl "$BASE_URL/$team" > "$DOWNLOAD_DIR/$team.jpg"
done
