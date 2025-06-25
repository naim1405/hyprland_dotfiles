set -g fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

alias vim=nvim
alias ff=fastfetch
alias 'update-mirror'='rate-mirrors --protocol https --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'
alias note='nvim ~/Documents/notes/'
set -x EDITOR nvim


# Created by `pipx` on 2025-02-09 15:36:34
set PATH $PATH /home/ezio/.local/bin

abbr np "cd '/mnt/New Volume/_Programming'"
abbr work 'cd ~/Documents/work/'
abbr conf 'cd ~/.config/'


set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools
set -x EDGE_PATH /usr/bin/brave
zoxide init --cmd cd fish | source

set -U fish_user_paths /usr/lib/llvm18/bin $fish_user_paths
set -x PATH $PATH  $HOME/.config/tmux/plugins/tmuxifier/bin
eval (tmuxifier init - fish)
