#!/bin/bash
# Q8 - merge the Q12345 pull request into main (keep the branch)
OWNER="HYousef07"
gh pr merge Q12345 -R "$OWNER/lab6" --merge
gh pr view Q12345 -R "$OWNER/lab6" --json number,state,mergedAt
