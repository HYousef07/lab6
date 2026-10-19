#!/bin/bash
# Q3 - check if the collaborator has accepted the invite
OWNER="HYousef07"
COLLAB="EmmanFulfilled"
echo "Pending (NOT yet accepted) invitations:"
gh api "repos/$OWNER/lab6/invitations" --jq '.[].invitee.login'
echo "Current collaborators:"
gh api "repos/$OWNER/lab6/collaborators" --jq '.[] | "\(.login)  \(.role_name)"'
if gh api "repos/$OWNER/lab6/collaborators/$COLLAB" --silent 2>/dev/null; then
  echo ">> $COLLAB HAS accepted the invite"
else
  echo ">> $COLLAB has NOT accepted yet"
fi
