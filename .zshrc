 if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 fi

export ZSH=/Users/emeren/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX="true"
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshr

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
source $ZSH/oh-my-zsh.sh

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt correct_all # correct typos
# P10k 
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source "${HOME}/.config/ohmyzsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '§' autosuggest-accept
bindkey '`' autosuggest-accept
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match



HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#248342,bold"

# User configuration

CODESTATS_API_KEY="SFMyNTY.ZEc5dFlYTjZYMlZ0WlhKbGJnPT0jI01UQTRNRE09.94eEFKndx7M0KDhvpiGeHVkPilzzNt5YV-wzppN0R6c"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


# Setup working directory 
# cd /Users/semanser/Desktop/Programming

#rbenv
eval "$(rbenv init -)"

plugins=(git laravel5 laravel vi-mode gitignore zsh_reload jump tmux)

# Fzf function 
export FZF_DEFAULT_COMMAND='rg --files --hidden'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
ch() {
  local cols sep
  cols=$(( COLUMNS / 3 ))
  sep='{::}'
System/Volumes/Data/Users/emeren/Library/Application Support/Google/Chrome/Default/
  cp -f ~/Library/Application\ Support/Google/Chrome/1/History /tmp/h

  sqlite3 -separator $sep /tmp/h \
    "select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
  awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
  fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}

#Git
alias s="status"
alias g="git"
alias gc="git commit"
alias gpull="git pull"
alias gpush="git push"
alias git ac="git add . && git commit -m "
alias co="checkout"


# Exa
alias ls='exa --group-directories-first'                                                         # ls
alias l='exa -lbF --git --group-directories-first'                                               # list, size, type, git
alias ll='exa -lbGF --git --group-directories-first'                                             # long list
alias llm='exa -lbGd --git --sort=modified --group-directories-first'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --group-directories-first'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --group-directories-first' # all + extended list

# MY sshortcuts
alias S="cd ~/Sites"
alias s="cd ~/Sites"
alias n="nvim "
alias nc="cd ~/.config/nvim/ && nvim"
alias nzsh="nvim ~/.zshrc"
alias cfg="cd ~/.config/"
alias c="clear"


#laravel db
alias pmf='php artisan migrate:fresh'
alias pmfs='php artisan migrate:fresh --seed'

#FE
alias nrw='npm run watch'
alias r='rails'


#BIP
alias gpbp='ssh elodzkie "git --work-tree=/home/elodzkie/public_html/bip.lodzkie.pl/templates/biuletyninformacjipublicznejlodzkie --git-dir=/home/elodzkie/git/bip.git checkout -f"'
alias pa='php artisan '
alias nrw='npm run watch'


#$PATH$
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"



export PATH=$PATH:$HOME/bin
export EDITOR='nvim'
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export TERM="xterm-256color"

#FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PHP
export PATH=/usr/local/Cellar/php/7.4.10/bin:$PATH
export PATH="/usr/local/opt/php@7.4/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# if [ -z "$TMUX" ]
# then
    # tmux attach -t TMUX || tmux new -s TMUX
# fi
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
