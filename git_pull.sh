#!/bin/bash

repos=( 
  "E:\ProjectName\repo_name1",
  "E:\ProjectName\repo_name2"
)

echo ""
echo "Getting latest for" ${#repos[@]} "repositories using pull --rebase"

for repo in "${repos[@]}"
do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  cd "${repo}"
  git pull --rebase
  echo "******************************************"
done
