# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# some more ls aliases
		alias ll='ls -alF'
		alias la='ls -A'
		alias l='ls -CF'
		alias ls='ls --color=auto'
		alias l.='ls -d .* --color=auto'

#alias for GIT
    alias g='git'
    alias gl='git log'
    alias gc='git commit -a -v'
    alias ga='git add .'
    alias gp='git push'
    alias gco='git checkout'
    alias gbr='git branch'
    alias gst='git status'
    alias gra='git remote add'
    alias grr='git remote rm'
    alias gpu='git pull'
    alias gcl='git clone'
    alias gd='git diff'
    alias gdc='git diff --cached'
    alias gt='git reset --hard HEAD'
    alias gtl='git reset --hard HEAD^'
    alias gaa='git commit -C HEAD -a --amend'
    
#alias for goagent
    alias go='cd google_appengine/goagent/local/;python proxy.py'
    
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
    alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'