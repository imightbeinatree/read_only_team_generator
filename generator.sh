#!/bin/bash
# Read Only Team Generator

# here's where you put your oauth token
token=""


# this is the org name
org=""


# this is the id for team
team_id=""


# get all members from the organization
# https://developer.github.com/v3/orgs/members/#members-list
IFS=$'\r\n' GLOBIGNORE='*' :; members_array=($(curl -H "Authorization: token $token" -i https://api.github.com/orgs/$org/members|grep "\"login\": "|cut -d ":" -f 2|sed 's/"//g'|sed 's/,//g'|sed 's/ //g'))


# add every member to the team
# https://developer.github.com/v3/orgs/teams/#add-team-member
for i in "${members_array[@]}"
do
  :
  curl --request PUT -H "Content-Length: 0" -H "Authorization: token $token" -i "https://api.github.com/teams/$team_id/members/$i"
done

# get a list of every private repository in the organization
# https://developer.github.com/v3/repos/#list-organization-repositories
IFS=$'\r\n' GLOBIGNORE='*' :; repos_array=($(curl -H "Authorization: token $token" -i "https://api.github.com/orgs/$org/repos?page=1&per_page=100"|grep "\"name\": "|cut -d ":" -f 2|sed 's/"//g'|sed 's/,//g'|sed 's/ //g'))


# add every private repository to the team for the organization
# https://developer.github.com/v3/orgs/teams/#add-team-repo
#PUT /teams/$team_id/repos/$org/$repo
for i in "${repos_array[@]}"
do
  :
  curl --request PUT -H "Content-Length: 0" -H "Authorization: token $token" -i "https://api.github.com/teams/$team_id/repos/$org/$i"
done
