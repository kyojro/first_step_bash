
#!/bin/bash

#WORK_DIR="$(realpath "$(dirname "$BASH_SOURCE")")"
#echo $WORK_DIR

PATH_DIR="$(grep "path" environments.txt | cut -d " " -f 2)"
#LOGIN="$(grep "login" environments.txt | cut -d " " -f 2)"
#PASSWORD="$(grep "password" environments.txt | cut -d " " -f 2)"
#wget --login="$LOGIN" --password="$PASSWORD" "$PATH" -nd -r -A .json

ARCH_NAME="$(grep "user_agent" ./text.txt | cut -d "\"" -f 4)"
echo $ARCH_NAME
#tar cvjf "$ARCH_NAME".tgz *.json
