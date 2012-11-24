#!/bin/bash
#
# CRM .bash_profile Time-stamp: "2008-12-07 19:42"
#
# echo "Loading ${HOME}/.bash_profile"
source ~/.profile # Get the paths
source ~/.bashrc  # get aliases
# add screencast for git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#change color and the way it turns
PS1="\[\033[1;34m\]\w\[\033[0;36m\]\$(parse_git_branch)$ \[\033[1;32m\]"
#
#- end
