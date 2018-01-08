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

alias projectdiary="vim ~/git/Sodium-DFT-Project/project_diary"
alias sshbm="ssh -X max@big-monkey -t \"tmux attach -t max-ssh || tmux new -s max-ssh\""

#alias to log into uni computer
alias sshcplabmain="ssh -X s1333534@ph-cplab.ph.ed.ac.uk -t \"export TERM=xterm && tmux new-session -A -s max-ssh\""
sshcplab () {
	ssh -X s1333534@ph-cplab.ph.ed.ac.uk -t "export TERM=xterm && ssh s1333534@cplab$1 -t \"export TERM=xterm && tmux new-session -A -s max-ssh\"";}
#address to connect to cplab
export CPLAB="s1333534@ph-cplab.ph.ed.ac.uk"
# add quantum espresso to the path file
export PATH="$PATH:/home/max/quantum_espresso/qe-6.1/bin"
# add quantum espress pseudo potential folder to an environment variable
export ESP_PSP_PATH="/home/max/quantum_espresso/qe-6.1/pseudo"
export ESPRESSO_PSEUDO="/home/max/quantum_espresso/qe-6.1/pseudo"
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'
stty -ixon
