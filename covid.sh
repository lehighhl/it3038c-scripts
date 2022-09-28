#!/bin/bash
# This script downloads covid data and displays it

POSITIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].positive')
TODAY=$(date)
NEGATIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].negative')
PENDING=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].pending')
HOSPITALIZED=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].hospitalizedCurrently')

echo "On $TODAY, there were $POSITIVE positive cases, $NEGATIVE negative cases, $PENDING pending cases, and $HOSPITALIZED currently hospitalized"
