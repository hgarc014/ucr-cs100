#!/bin/bash

git remote add upstream https://github.com/mikeizbicki/ucr-cs100.git
clear
echo "Fetching Update"
git fetch upstream
#git rebase upstream/cs100-2014fall
git merge upstream/cs100-2014fall
echo "push to update if there was an update"

