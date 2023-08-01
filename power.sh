#!/bin/bash

FILE=README.md
touch $FILE

for day in {1..30}; do
  COMMITS=$((1 + RANDOM % 18))
  for ((i = 0; i < COMMITS; i++)); do
    echo "$day-$i" >> $FILE
    git add $FILE
    GIT_AUTHOR_DATE="2023-07-$day 12:$i:00" \
    GIT_COMMITTER_DATE="2023-07-$day 12:$i:00" \
    git commit -m "editing readme"
  done
done

