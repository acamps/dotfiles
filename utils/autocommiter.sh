#!/bin/bash
#To be used with a cron job

repository_commit ()
{
    cd $1
    /usr/local/bin/git pull --no-edit
    /usr/local/bin/git add . -A
    /usr/local/bin/git commit -m "$2"
    /usr/local/bin/git push
}

now="$(date +\"%y-%m-%d\")"
echo $now
repository_commit /Users/albertcamps/vimwiki "Update knowledge of $now"
repository_commit /Users/albertcamps/Documents/projects/acamps.github.io "Update blog posts of $now"

