# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias fftool='/mnt/e/ubuntu/github/fftool/fftool'
alias polarizer='/mnt/e/ubuntu/github/clandpol/polarizer'
alias scaleLJ='/mnt/e/ubuntu/github/clandpol/scaleLJ'
alias packmol='/mnt/e/ubuntu/github/packmol/packmol'
alias xmgrace='LC_ALL=C xmgrace'
alias pycharm='/mnt/e/ubuntu/pycharm-community-2022.1.2/pycharm-community-2022.1.2/bin/pycharm.sh'
alias edge='/mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe'
alias nv='nvim'
alias lv='lvim'
alias cat='bat'
alias ls='exa --icons'
alias scp='noglob scp'
alias alura='cd /mnt/e/OneDrive/Alura'

export DISPLAY=localhost:0.0

export LANG=pt_BR.utf8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

export EDITOR='/usr/local/bin/nvim'
export GIT_EDITOR='/usr/local/bin/nvim'

path+=('/home/gui/.local/bin')

zstyle ':completion:*' special-dirs true
