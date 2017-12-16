#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
autoload -Uz vcs_info
#vcsの表示
zstyle ':vcs_info:*' formats '%s][* %F{green}%b%f'
zstyle ':vcs_info:*' actionformats '%s][* %F{green}%b%f(%F{red}%a%f)'

alias vz='vim ~/.zshrc'

#Go
alias gr='go run'
alias gb='go build'

#git
alias g='git'
alias pull='git pull'
alias push='git ps'
alias dc='git d --cached'
alias dn='git d --name-only'
alias br='git br'
alias a='git add'
alias co='git checkout'
alias cob='git checkout -b'
alias ci='git commit'
alias st='git status'
alias lg='git log'
alias ad='git add'
