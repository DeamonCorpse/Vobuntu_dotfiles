############## UBUNTU SERVER CONFIG ##############
# !/bin/zsh

# Run neofetch at terminal start
neofetch


# Terminal Colours
autoload -U colors && colors


# Set up the prompt
autoload -Uz promptinit
promptinit


# Command Correction
setopt correctall


# Aliases
alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias sourcet='source ~/.zshrc'         	# Refresh/restart terminal
alias nano='sudo nano'                  	# Run nano as admin
alias vi='sudo vi'                      	# Run vim as admin
alias zshrc='sudo nano ~/.zshrc'                # Edit .zshrc file
alias ufw='sudo ufw'                            # Run UFW as admin
alias sshd='sudo nano /etc/ssh/sshd_config'     # Edit sshd_config file

alias apt='sudo apt'                            # Using apt
alias snap='sudo snap'                          # Using snap

alias lscpu='sudo lscpu'                    # Using lscpu
alias lshw='sudo lshw'                      # Using lshw
alias hwinfo='sudo hwinfo'                  # Using hwinfo
alias lspci='sudo lspci'                    # Using lspci
alias lsscsi='sudo lsscsi'                  # Using lsscsi
alias lsusb='sudo lsusb'                    # Using lsusb
alias pydf='sudo pydf'                      # Using pydf
alias lsblk='sudo lsblk'                    # Using lsblk
alias df='sudo df'                          # Using df
alias fdisk='sudo fdisk'                    # Using fdisk
alias mount='sudo mount'                    # Using mount
alias free='sudo free'                      # Using free
alias dmidecode='sudo dmidecode'            # Using dmidecode
alias hdparm='sudo hdparm'                  # Using hdparm
alias blkid='sudo blkid'                    # Using blkid

alias bashtop='sudo bashtop'                # Using bashtop

alias lns='ln -s'                       # Symlink command
alias lsa='ls -ahA'                     # List all files including hidden ones without the . & .. in a human readable format
alias lsl='ls -lhA'                     # Detailed listing without the . & .. in a human readable format
alias lsal='ls -ahlA'                   # Detailed listing including hidden files without the . & .. in a human readable format

alias docke='sudo docker exec -it'      # Going inside a container
alias docki="sudo docker inspect"       # Display the information about a container
alias dockimg='sudo docker images'      # List images installed
alias dockps='sudo docker ps'           # List running containers
alias dockr='sudo docker run'           # Run a container


# History
setopt histignorealldups sharehistory appendhistory histreduceblanks histignorespace

HISTSIZE=200
SAVEHIST=200
HISTFILE=~/.zsh_history


# Use modern completion system
autoload -Uz compinit
compinit
_comp_options+=(globdots)

zstyle ':completion:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Completion Explicit Choice Options
export SPROMPT="Correct %R to %r? [Yes, No, Abort, Edit] "
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color? [Yes, No, Abort, Edit] "


# Enable Change Directory
setopt auto_cd auto_pushd pushd_ignore_dups pushdminus

zstyle ':completion:*:*:cdr:*:*' menu selection
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 50
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-pushd true

# Misc
setopt extendedglob nomatch notify
unsetopt beep


####################### PLUGINS & THEMES  #######################
# Auto-Completions
# Github Repo @ https://github.com/zsh-users/zsh-completions
# Completion List @ https://github.com/zsh-users/zsh-completions/tree/master/src
source ~/zsh_plugins/zsh-completions/zsh-completions.plugin.zsh


# Powerlevel10k Theme @ https://github.com/romkatv/powerlevel10k
# Run setup with "p10k configure"
source ~/zsh_plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


####################### ALWAYS LAST #######################
# Zsh Syntax Highlighting @ https://github.com/zsh-users/zsh-syntax-highlighting
source ~/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

