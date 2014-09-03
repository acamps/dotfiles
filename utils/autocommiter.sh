#!/bin/bash
now="$(date)"
cd /Users/albertcamps/vimwiki
/usr/local/bin/git add . -A
/usr/local/bin/git commit -m "Update knowledge of $now"
/usr/local/bin/git push
#To be used with a cron job

