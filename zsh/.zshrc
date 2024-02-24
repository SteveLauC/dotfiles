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
export PATH="$PATH:/home/steve/.local/share/bob/nvim-bin"

# Path for Golang
export PATH=$PATH:/usr/local/go/bin

# Use nvim as the EDITOR
export EDITOR="nvim"

# Proxy
export http_proxy=http://127.0.0.1:8890;
export https_proxy=http://127.0.0.1:8890;
export all_proxy=socks5://127.0.0.1:8891;

# less colours -- since man uses less as a pager, this gives us
# coloured man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# Theme for Bat
export BAT_THEME="ansi"

# panic backtrace for rust
export RUST_BACKTRACE=1

# Set JDK installation directory according to selected Java compiler
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
# Or you can use the following one if you don't have javac installed (e.g., JRE)
# export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")

export LIBTORCH=~/.local/lib/libtorch
export LIBTORCH_INCLUDE=~/.local/lib/libtorch
export LIBTORCH_LIB=~/.local/lib/libtorch
export LD_LIBRARY_PATH=${LIBTORCH}/lib:$LD_LIBRARY_PATH

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

# Always use `flatpak` in user mode
#
# `flatpak -h` does not mention you can do this, but it will work
alias flatpak='flatpak --user'


################################################################################
# scripts                                                                      #
################################################################################

# Tmux session script
alias dev='bash ~/Documents/dotfiles/scripts/dev.sh'


################################################################################
# Tool startup                                                                 #
################################################################################

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
