#!/bin/sh
echo "What ticket number:"
read ticket 
echo "Commit message for ticket:"
read message
echo "Running git add -A && git commit -m $ticket $message"
git add -A && git commit  -m "$ticket $message"
