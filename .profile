
# MacPorts Installer addition on 2012-10-28_at_21:28:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
 
PS1="$GREEN\u$NO_COLOUR:\W$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function git_flow_current_feature()
{
    x=$(git rev-parse --abbrev-ref HEAD)
    echo $(basename $x)
}

function git_current_branch()
{
    git rev-parse --abbrev-ref HEAD    
}

function start()
{
    if [ "$#" != "1" ]
    then
        echo "Usage: start feature_number"
        return
    fi
    if [ "$(git_current_branch)" != "develop" ]
    then
        git checkout develop
    fi
    git pull upstream develop
    if [ "$?" = "0" ]
    then
        git flow feature start $1
    fi
}

alias st='git status'
alias pull='git pull'
alias push='git push'
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit'
alias publish='git flow feature publish $(git_flow_current_feature)'
alias finish='git flow feature finish -F $(git_flow_current_feature)'
alias finishL='git flow feature finish $(git_flow_current_feature)'
alias track='git flow feature track $1'
alias flowDiff='git flow feature diff $(git_flow_current_feature)'
alias flowCheckout='git flow feature checkout $1'

alias runserver='bin/django runserver'
alias syncdb='bin/django syncdb'
alias migrate='bin/django migrate'
alias schemamigration='bin/django schemamagration'
alias collectstatic='bin/django collectstatic'

git()
{
    if [ "$1" = "push" -a "$#" = "1" ]
    then
        command git push origin $(git_current_branch)
    elif [ "$1 $2" = "rm branch" -a "$#" = "3" ]
    then
        command git push origin :$3
        if [ $(git_current_branch) = "$3" ]
        then
            command git checkout develop
        fi
        command git branch -D $3
    elif [ "$1" = "pull" -a "$#" = "1" ]
    then
        command git pull origin $(git_current_branch)
    else
        command git "$@"
    fi
}

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

lessc()
{
    if [ "$1" = "sherpany" ]
    then
       command lessc py_src/project/static/css/sherpany.less py_src/project/static/css/sherpany.css
    else
       command lessc "$@"
    fi
}

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


# VIM
export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"
