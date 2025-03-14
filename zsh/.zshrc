# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/gui/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export ASDF_DATA_DIR="/home/gui/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

export PATH=/home/gui/.local/bin:$PATH
export PATH=/home/gui/.cargo/bin:$PATH
export LC_ALL=en_US.UTF-8 
export LANGUAGE=en_US:pt_BR
export EDITOR='/home/gui/.local/bin/lvim'
export GIT_EDITOR='/home/gui/.local/bin/lvim'
export FLYCTL_INSTALL="/home/gui/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export CONDA_AUTO_ACTIVATE_BASE=false
export PATH=/home/gui/bin:$PATH

zstyle ':completion:*' special-dirs true

alias nv='nvim'
alias lv='lvim'
alias fftool='/mnt/d/ubuntu/github/fftool/fftool'
alias polarizer='/mnt/d/ubuntu/github/clandpol/polarizer'
alias scaleLJ='/mnt/d/ubuntu/github/clandpol/scaleLJ'
alias packmol='/mnt/d/ubuntu/github/packmol/packmol'
alias xmgrace='xmgrace'
alias cat='bat'
alias ls='exa --icons'
alias scp='noglob scp'
alias alura='cd /mnt/d/OneDrive/Alura'
alias estudos='cd /mnt/d/OneDrive/estudo'
alias winget='winget.exe'
alias work='cd /mnt/d/ubuntu/'
alias edge='/mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe'
#alias condastart='source /home/gui/anaconda3/bin/activate'
alias condastart='. /home/gui/anaconda3/etc/profile.d/conda.sh'

eval "$(starship init zsh)"
