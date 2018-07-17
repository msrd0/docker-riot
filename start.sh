#!/bin/sh
set -e

config=/opt/riot/config.json

sed -i "s,{{DEFAULT_HS_URL}},${DEFAULT_HS_URL:-https://matrix.org},g" $config
sed -i "s,{{DEFAULT_IS_URL}},${DEFAULT_HS_URL:-https://vector.im},g" $config
sed -i "s,{{BRAND}},${BRAND:-Riot},g" $config
sed -i "s,{{INTEGRATIONS_UI_URL}},${INTEGRATIONS_UI_URL:-https://scalar.vector.im},g" $config
sed -i "s,{{INTEGRATIONS_REST_URL}},${INTEGRATIONS_REST_URL:-https://scalar.vector.im},g" $config
sed -i "s,{{DEFAULT_THEME}},${DEFAULT_THEME:-dark},g" $config

nginx -g 'daemon off;'
