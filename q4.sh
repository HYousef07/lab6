#!/bin/bash
# Q4 - remove the collaborator from lab6
OWNER="HYousef07"
COLLAB="EmmanFulfilled"
gh api -X DELETE "repos/$OWNER/lab6/collaborators/$COLLAB"
# if they never accepted, cancel the pending invite as well
for id in $(gh api "repos/$OWNER/lab6/invitations" --jq ".[] | select(.invitee.login==\"$COLLAB\") | .id"); do
  gh api -X DELETE "repos/$OWNER/lab6/invitations/$id"
done
echo "Collaborators now:"
gh api "repos/$OWNER/lab6/collaborators" --jq '.[] | "\(.login)  \(.role_name)"'
