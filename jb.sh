#!/bin/bash

# replace with your own
BASE_URL="https://jira.atlassian.com"

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
TICKET_ID=$(expr match "${CURRENT_BRANCH}" '[^/]\+/\([A-Za-z]\+-[0-9]\+\).*')

if [ -z "$1" ]
then
    echo "${BASE_URL}/${TICKET_ID}"
    open "${BASE_URL}/${TICKET_ID}"
else
    echo "${BASE_URL}/${1}"
    open "${BASE_URL}/${1}"
fi