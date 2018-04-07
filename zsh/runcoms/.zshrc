#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# origin
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# search history with peco
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# ローカルの設定ファイルがあればそれを読み込み
if [ -f "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi

# search ghq src with peco
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^p' peco-src

# Customize to your needs...
autoload -Uz vcs_info
#vcsの表示
zstyle ':vcs_info:*' formats '%s][* %F{green}%b%f'
zstyle ':vcs_info:*' actionformats '%s][* %F{green}%b%f(%F{red}%a%f)'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


#########
# alias #
#########

#Go
alias gr='go run'
alias gb='go build'

#git
alias g='git'
alias pl='git pull'
alias ps='git push'
alias d='git diff'
alias dc='git diff --cached'
alias dn='git diff --name-only'
alias br='git branch'
alias co='git checkout'
alias cob='git checkout -b'
alias ci='git commit'
alias st='git status'
alias lg='git log'
alias ad='git add'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/oshimahideaki/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/oshimahideaki/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/oshimahideaki/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/oshimahideaki/google-cloud-sdk/completion.zsh.inc'; fi
