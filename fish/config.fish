# Create aliases
alias cls="clear"
alias g="git"
alias n="nvim"
alias m="micro"
alias cat="batcat"
alias work="cd /mnt/e/Code/Work"
alias ngrok_start="ngrok http --url=finer-quickly-longhorn.ngrok-free.app"
alias tml="tmux ls"
alias tmk="tmux kill-session -t"
alias tma="tmux attach-session -t"
alias proxy-panel="ssh -R kematin-panel:80:localhost:8000 serveo.net"

# ollama
export OLLAMA_MODELS="/mnt/b/ollama/models"

# server
export SERVER_IP="0.0.0.0"
alias connect_server="ssh www@$SERVER_IP"

# Display critical errors
alias syslog_emerg="sudo dmesg --level=emerg,alert,crit"

# Output common errors
alias syslog="sudo dmesg --level=err,warn"

# Print logs from x server
alias xlog='grep "(EE)\|(WW)\|error\|failed" ~/.local/share/xorg/Xorg.0.log'

# Remove archived journal files until the disk space they use falls below 100M
alias vacuum="journalctl --vacuum-size=100M"

# Make all journal files contain no data older than 2 weeks
alias vacuum_time="journalctl --vacuum-time=2weeks"

alias create_project="mkdir Project && cd Project && python3.10 -m venv venv && . ./venv/bin/activate && touch main.py"

alias neofetch='neofetch --source $HOME/misc/ascii/art2.txt'
alias l="ls -la"


set -U fish_greeting
set fish_color_command green
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER /usr/bin/firefox


if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

# Created by `pipx` on 2024-03-20 14:13:31
set PATH $PATH /home/user/.local/bin

# Created by `pipx` on 2024-05-26 05:57:48
set PATH $PATH /home/kematin/.local/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/kematin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

