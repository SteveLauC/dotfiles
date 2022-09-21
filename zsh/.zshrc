###############################################################################
# Oh-my-zsh configuration                                                     #
###############################################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh



###############################################################################
# Environment Variables                                                       #
###############################################################################

# rust toolchain
. "$HOME/.cargo/env"

# Added by Toolbox App
export PATH="$PATH:/home/steve/.local/share/JetBrains/Toolbox/scripts"

# Binarys install through pip
export PATH="$PATH:/home/steve/.local/bin"

# Proxy
export http_proxy=http://127.0.0.1:8890;
export https_proxy=http://127.0.0.1:8890;

# use `most` as the pager (syntax highlight for `man`)
export PAGER="most -c"
# Theme for Bat
export BAT_THEME="ansi"



################################################################################
# User interactive configuration                                               #
################################################################################

# exa alias
alias ls='exa'
alias l='exa -lgh'
alias ll='exa -aalgh'

# Neovim
alias vim='nvim'

# Tmux session script
alias dev='bash ~/Documents/dotfiles/tmux/dev.sh'

# make gcc and g++ as strict as possible
alias gccs='gcc  -Wall -Wextra -std=gnu99 -pedantic -Wmissing-prototypes \
	-Wstrict-prototypes -Wold-style-definition'

alias g++s='g++ -fno-elide-constructors -pedantic-errors -ansi -Wextra -Wall \
	-Winit-self -Wold-style-cast -Woverloaded-virtual -Wuninitialized -Wmissing-declarations \
	-Winit-self -std=c++17'

# alias for valgrind
alias valgrind='valgrind --leak-check=yes'

# restart gnome shell
alias gs-restart='killall -3 gnome-shell'

################################################################################
# Tool startup                                                                 #
################################################################################

# run starship
eval "$(starship init zsh)"

# run zoxide
eval "$(zoxide init zsh)"
