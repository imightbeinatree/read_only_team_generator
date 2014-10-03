#!/bin/bash
echo "customizing"
sed -i -e "s/token=''/token = '$token\/'/g" /generator.sh
sed -i -e "s/org=''/org = '$org\/'/g" /generator.sh
sed -i -e "s/team_id=''/team_id = '$team_id\/'/g" /generator.sh
/generator.sh