#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias rb="sudo reboot now"
alias sd="sudo shutdown now"
alias pde="cd ~/HMC/Autumn2020/Math180-PDEs"
alias bop="nohup vlc --random ~/Music/* &"

alias ls='ls --color=auto'

# fuk off conda 
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/willithg/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/willithg/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/willithg/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/willithg/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

