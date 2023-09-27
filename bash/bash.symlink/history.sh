# Ignore duplicates and commands that start with spaces
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=10000

export PROMPT_COMMAND='history -a;history -c;history -r'
