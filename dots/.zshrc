# Path to your oh-my-zsh configuration.
CONFIGPATH="/Users/${USER}/Developer/config"
source $CONFIGPATH/extra/.aliases
source $CONFIGPATH/extra/.functions
source $CONFIGPATH/extra/.exports
# source $CONFIGPATH/.private # This file is not tracked by git

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# User configuration
export ZSH="/Users/${USER}/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Add plugins
plugins=(git github gh brew zsh-syntax-highlighting zsh-autosuggestions poetry)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
