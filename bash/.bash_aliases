# bash aliases
# this file has aliases that I want to share thru my github dotfiles

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='exa --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
# alias ll='exa -alFh --color=auto'
alias ll='exa -alFh --color=auto -snew'  # sort by newest modstamp
alias la='exa -Ah'
alias l='ls -Fh'  # what is this?

alias updagra='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y --purge'

alias exa='~/bin/exa-linux-x86_64'
# ask if you want to delete files
alias rm='rm -I'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#  (en_US.UTF-8 ignores hyphens (!))   locale won't affect sorting
alias sort='LCALL=C sort'

# cd multiple levels
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# mirror pbcopy and pbpaste (macOs) using linux

# from https://www.ostechnix.com/how-to-use-pbcopy-and-pbpaste-commands-on-linux/
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# alias ip b/c hard to remember these options
alias ipa='ip -br -color a'
alias ipl='ip -br -color link'

# alias tree so it ignores node_modules
alias tree="tree -I 'node_modules|__py_cache__|venv'"

# start a virtualenv
alias pyv="source venv/bin/activate"
alias pystart="source venv/bin/activate && pip install pip -U"
# create a virtualenv
alias vpy="python3.9 -m venv venv --prompt "$1""

# intellij has some ibus incompatibility issues
# see: https://youtrack.jetbrains.com/issue/IDEA-78860
export IBUS_ENABLE_SYNC_MODE=1

# mercurial special
# alias xcommit='hg commit --config hooks.pretxncommit='

# enable nicer python console
export PYTHONSTARTUP=~/.pythonstartup
export GPGKEY=A233CC2E

export PATH=$PATH:~/bin
