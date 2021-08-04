# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
# Run this for new user install prompt
# autoload -U zsh-newuser-install
# zsh-newuser-install -f

HISTFILE=~/.config/zsh/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob nomatch notify
unsetopt beep

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall


zstyle :compinstall filename '/home/tyler/.zshrc'

autoload -Uz compinit && compinit
############################## End of lines added by compinstall


##############################    Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/taskwarrior-autocomplete/taskwarrior-autocomplete.zsh
##############################    VI Mode
bindkey -v
export KEYTIMEOUT=0.5

##############################    KeyBindings
source ~/.config/zsh/maps/maps.zsh

##############################    Aliases
source ~/.config/zsh/Aliases/aliases.zsh

#############################     Exports
export EDITOR='/bin/nvim'
export RANGER_LOAD_DEFAULT_RC=false
export TASKRC=~/.config/task/.taskrc
export TASKDATA=~/.config/task/.task/

PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/tyler/bin:/home/emacs.d/bin/

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
