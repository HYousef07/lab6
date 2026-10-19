#!/bin/bash
# Q7 - create a pull request to merge Q12345 into main
OWNER="HYousef07"
gh pr create -R "$OWNER/lab6" --base main --head Q12345 \
  --title "Merge Q12345: lab6 answers q1-q5" \
  --body "Adds the gh cli scripts for questions 1-5"
gh pr list -R "$OWNER/lab6"
