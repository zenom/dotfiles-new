#!/bin/sh
echo "What ticket number:"
read ticket 
echo "Commit message for ticket:"
read message
echo "Committing: $ticket $message"
git commit  -am "$ticket $message"
