#Prompt
PS1=$'%F{def}%(?..%B%K{yel}[%?]%K{def}%b )%(1j.%b%K{yel}%F{bla}%jJ%F{def}%K{def} .)%F{red}%B%*%b %F{m}%m:%F{red}%~ %(!.#.>) %F{def}'


#Add custom completions
fpath=(~/.config/zsh/completions $fpath)

#address to connect to cplab
export CPLAB="s1333534@ph-cplab.ph.ed.ac.uk"
# add quantum espresso to the path file
export PATH="$PATH:/home/max/quantum_espresso/qe-6.1/bin"
# add quantum espress pseudo potential folder to an environment variable
export ESP_PSP_PATH="/home/max/quantum_espresso/qe-6.1/pseudo"
export ESPRESSO_PSEUDO="/home/max/quantum_espresso/qe-6.1/pseudo"
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='rg --no-ignore --files --hidden --follow -g "!{.git}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --no-ignore --hidden --follow --type d"
export FZF_DEFAULT_OPTS="--preview='head -$LINES {}'"

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/max/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Improving vi mode
autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd "^V" edit-command-line
# Make vi transitions faster
export KEYTIMEOUT=1

#Reverse tab completion
bindkey '^[[Z' reverse-menu-complete

#Add completion highlighting
zstyle ':completion:*' menu select

# Source fzf keybindings
source ~/.config/zsh/plugins/key-bindings.zsh
# Use zsh interactive cd plugin
# source ~/.config/zsh/plugins/zsh-interactive-cd.plugin.zsh

#Disable ctrl-d logout
setopt IGNORE_EOF

source ~/.config/zsh/plugins/fzf-mpd.zsh 

alias projectdiary="vim ~/git/Sodium-DFT-Project/project_diary"
alias sshbm="ssh -X max@big-monkey -t \"tmux attach -t max-ssh || tmux new -s max-ssh\""

#alias to log into uni computer
alias sshcplabmain="ssh -X s1333534@ph-cplab.ph.ed.ac.uk -t \"export TERM=xterm && tmux new-session -A -s max-ssh\""
sshcplab () {
	ssh -X s1333534@ph-cplab.ph.ed.ac.uk -t "export TERM=xterm && ssh s1333534@cplab$1 -t \"export TERM=xterm && tmux new-session -A -s max-ssh\"";}
stty -ixon

#Git aliases
alias gia='git add'
alias gis='git status'
alias gic='git commit -m'
alias gip='git push'
alias gipu='git pull'
alias gid='git diff'
