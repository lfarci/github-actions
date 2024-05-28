#!/bin/bash

GITHUB_TOKEN=$GITHUB_TOKEN
OWNER=$OWNER
REPO=$REPO

curl -X POST \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Accept: application/vnd.github.everest-preview+json" \
    https://api.github.com/repos/$OWNER/$REPO/dispatches \
    -d '{ "event_type": "my-event-type", "client_payload": { "Name": "Logan", "Age": 25 } } ' 

