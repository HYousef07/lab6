#!/bin/bash
# Q2 - invite a collaborator with push (write) access to lab6
OWNER="HYousef07"
COLLAB="EmmanFulfilled"
gh api -X PUT "repos/$OWNER/lab6/collaborators/$COLLAB" -f permission=push --jq '"Invite sent to \(.invitee.login) (invite id \(.id))"'
echo "Pending invitations:"
gh api "repos/$OWNER/lab6/invitations" --jq '.[] | "\(.id)  \(.invitee.login)  \(.permissions)"'
