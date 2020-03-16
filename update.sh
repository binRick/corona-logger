#!/bin/bash
set -e
cd $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

_F=$(date +%s).csv
curl -s https://www.cdc.gov/coronavirus/2019-ncov/map-data-cases.csv -o $_F
git add $_F
git commit $_F -m 'auto update'
git push
