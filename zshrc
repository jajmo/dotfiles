# Path to your oh-my-zsh installation.
export ZSH=/home/jajmo/.oh-my-zsh

# Add theme
ZSH_THEME="flazz"

# Load plugins
plugins=(git)

# Default path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

# If ~/bin exists, add it to the path
if [ -d ~/bin ]; then
	PATH=~/bin:$PATH
fi

source $ZSH/oh-my-zsh.sh

# Source aliases, if they exist
if [ -f "$HOME/.aliases" ]; then
	. ~/.aliases
fi

# Run screenfetch to print nice things
if [ $(which screenfetch) ]; then
	screenfetch
fi
