#!/bin/bash
# Q1 - create a PUBLIC repo called lab6 using the gh cli
OWNER="HYousef07"
gh repo create lab6 --public --add-readme --description "DevOps lab6 - gh cli"
gh repo view "$OWNER/lab6" --json name,visibility,url
