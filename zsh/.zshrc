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

# bob: package manager for neovim
# NOTE: bob won't install a clipboard management tool for your, you have to 
# install one manually. e.g, to install `wl-clipboard`:
# sudo dnf install -y wl-clipboard
# For more information, see the `neovim` section in `installation.md`
# https://github.com/SteveLauC/dotfiles/blob/main/installation.md#cli-tools
export PATH="$PATH:/home/steve/.local/share/neovim/bin"

# Proxy
export http_proxy=http://127.0.0.1:8890;
export https_proxy=http://127.0.0.1:8890;

# use `most` as the pager (syntax highlight for `man`)
export PAGER="most -c"
# Theme for Bat
export BAT_THEME="ansi"

# panic backtrace for rust
export RUST_BACKTRACE=1

# Set JDK installation directory according to selected Java compiler
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
# Or you can use the following one if you don't have javac installed (e.g., JRE)
# export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")

################################################################################
# User interactive configuration                                               #
################################################################################

# exa alias
alias ls='exa'
alias l='exa -lghH'
alias ll='exa -aalghH'

# Neovim
alias vim='nvim'

# make gcc and g++ as strict as possible
alias gccs='gcc  -Wall -Wextra -std=gnu99 -pedantic -Wmissing-prototypes \
	-Wstrict-prototypes -Wold-style-definition'

alias g++s='g++ -fno-elide-constructors -pedantic-errors -ansi -Wextra -Wall \
	-Winit-self -Wold-style-cast -Woverloaded-virtual -Wuninitialized \
	-Wmissing-declarations -Winit-self -std=c++17'

# alias for valgrind
alias valgrind='valgrind --leak-check=yes'

# restart gnome shell
alias gs-restart='killall -3 gnome-shell'

# use `open` instead of `xdg-open`
alias open='xdg-open'


################################################################################
# scripts                                                                      #
################################################################################

# Update packages
alias update='bash ~/Documents/dotfiels/scripts/update.sh'
# Tmux session script
alias dev='bash ~/Documents/dotfiles/scripts/dev.sh'


################################################################################
# Tool startup                                                                 #
################################################################################

# run starship
eval "$(starship init zsh)"

# run zoxide
eval "$(zoxide init zsh)"
