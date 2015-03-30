#!/bin/bash
#To be used with a cron job

repository_commit ()
{
    cd $1
    /usr/bin/ssh-agent bash -c '/usr/bin/ssh-add /Users/albertcamps/.ssh/id_rsa_3; /usr/local/bin/git pull --no-edit'
    /usr/local/bin/git add . -A
    /usr/local/bin/git commit -m "$2"
    /usr/bin/ssh-agent bash -c '/usr/bin/ssh-add /Users/albertcamps/.ssh/id_rsa_3; /usr/local/bin/git push'
}

#Start with the correct ssh-agent for accessing the repositories.
/usr/bin/ssh-agent bash -c '/usr/bin/ssh-add /Users/albertcamps/.ssh/id_rsa_3'
now="$(date +\"%y-%m-%d\")"
echo $now
repository_commit /Users/albertcamps/vimwiki "Update knowledge of $now"
repository_commit /Users/albertcamps/Documents/projects/acamps.github.io "Update blog posts of $now"

