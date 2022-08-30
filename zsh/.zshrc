# Oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Environment Variables
# rust toolchain
. "$HOME/.cargo/env"
# Added by Toolbox App
export PATH="$PATH:/home/steve/.local/share/JetBrains/Toolbox/scripts"
# Binarys install through pip
export PATH="$PATH:/home/steve/.local/bin"
# Proxy
export http_proxy=http://127.0.0.1:8890;export https_proxy=http://127.0.0.1:8890;


# User interactive configuration

# use vim for man page
man() {
  /usr/bin/man $@ | \
    col -b | \
    vim -R -c 'set ft=man nomod nolist' -
}
# exa alias
alias l='exa -lgh'
alias ll='exa -aalgh'
# Neovim
alias vim='nvim'
# Tmux session script
alias dev='bash ~/Documents/dotfiles/tmux/dev.sh'
# make gcc and g++ as strict as possible
alias gccs='gcc  -Wall -Wextra -std=gnu99 -pedantic -Wmissing-prototypes -Wstrict-prototypes -Wold-style-definition'
alias g++s='g++ -fno-elide-constructors -pedantic-errors -ansi -Wextra -Wall     -Winit-self -Wold-style-cast -Woverloaded-virtual -Wuninitialized -Wmissing-declarations    -Winit-self -std=c++17'
# alias for valgrind
alias valgrind='valgrind --leak-check=yes'
# restart gnome shell
alias gs-restart='killall -3 gnome-shell'

# run starship
eval "$(starship init zsh)"
