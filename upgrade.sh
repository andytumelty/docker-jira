#!/bin/sh

docker pull cptactionhank/atlassian-jira
docker-compose stop jira
docker-compose rm -f jira
docker-compose up -d
