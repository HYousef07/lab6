#!/bin/bash
# Q5 - create an issue in lab6, assigned to me, labelled enhancement
OWNER="HYousef07"
gh issue create -R "$OWNER/lab6" \
  --title "create helloworld echo file" \
  --body "echo hello Pearse from lab6" \
  --assignee "@me" \
  --label enhancement
gh issue list -R "$OWNER/lab6"
