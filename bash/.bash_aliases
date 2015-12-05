# bash aliases
# this file has aliases that I want to share thru my github dotfiles

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
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'



# export JAVA to use
export JAVA_HOME=java-8-oracle/

# intellij has some ibus incompatibility issues
# see: https://youtrack.jetbrains.com/issue/IDEA-78860   
export IBUS_ENABLE_SYNC_MODE=1

# enable nicer python console
export PYTHONSTARTUP=~/.pythonstartup
export GPGKEY=A233CC2E

export PATH=$PATH:~/bin
