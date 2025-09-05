#!/bin/bash

#check that jq is installed on the system
if ! command -v jq &> /dev/null 
then
  echo "jq is could not be found. Please intall jq"
    
fi

#check that curl is installed on the system
if ! command -v curl &> /dev/null
then
    echo "curl could not be found. Please install curl"
  
fi

echo "ola"
#can you provide a lit of all star wars films?
curl -s https://swapi.dev/api/films/ | jq '.results[] |  {title: .title, episode_id: .episode_id, release_date: .release_date}' 

# como correr o script run.sh?  