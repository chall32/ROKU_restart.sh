#!/bin/bash

# Tested on a ROKU 2 - 2720x
# This will restart a ROKU assuming the navigation is the same for all models

ShowUsage() {
  echo "usage: $0 <ROKU IP>"
}

EXPECTED_ARGS=1
TARGET=$1

if [ $# -lt $EXPECTED_ARGS ];then
  ShowUsage
  exit 1
fi

for i in $*
do
        case $i in
        --help)
                ShowUsage
                exit 1
        ;;
        esac
done


if [[ -n "$TARGET" ]]; then

        curl -d '' http://$TARGET:8060/keypress/home && curl -d '' http://$TARGET:8060/keypress/up && curl -d '' http://$TARGET:8060/keypress/right && curl -d '' http://$TARGET:8060/keypress/up && curl -d '' http://$TARGET:8060/keypress/right && curl -d '' http://$TARGET:8060/keypress/down && curl -d '' http://$TARGET:8060/keypress/down && curl -d '' http://$TARGET:8060/keypress/down && curl -d '' http://$TARGET:8060/keypress/down && curl -d '' http://$TARGET:8060/keypress/right && curl -d '' http://$TARGET:8060/keypress/select

fi
