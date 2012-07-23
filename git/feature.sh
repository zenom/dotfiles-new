#!/bin/sh

cd ~/Development/CTM-DB-Web
# Checkout develop and then pull
git checkout develop && git pull origin develop

echo "What ticket #:"
read ticket_number

ticket="CTMWEB-$ticket_number"
git flow feature start "CTMWEB-$ticket_number" 

unset $ticket_number
