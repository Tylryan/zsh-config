

# Adds color to some commands
if ${use_color} ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	if type -p dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1='\u@\h \W \$ '
	else
		PS1='\u@\h \w \$ '
	fi
fi

alias v="/usr/bin/nvim"
alias notes='cd ~/Notes '
alias find-note='cd ~/Notes && v'

# Keyboard Layouts
alias dvorak='setxkbmap dvorak'
alias us='setxkbmap us'
alias no='setxkbmap no'
alias ru='setxkbmap ru'
alias swap-caps='setxkbmap -option caps:swapescape'

# My Scripts
alias tos='~/Bin/tos.sh'
alias ne='~/Bin/ne.sh'
alias e='~/Bin/emacs.sh'
alias www='~/Bin/elinks-search'
alias track-package='~/Bin/track-arch-packages'


# Compiler Settings
alias cc='cc -Wall -Werror -Wextra' # Basic C compiler w/ descent errors & warnings

# Shorter App Names
alias vi='/usr/bin/vim'

# Other Aliases
alias copy='xclip -selection clipboard'
alias doom='.emacs.d/bin/doom'
alias ls-all='set | grep -vi "power" | grep -vi "p9"'         # List everything the shell can manipulate
alias lynx='lynx -cfg ~/.config/lynx/lynx.cfg'
alias picom-on='picom --config $HOME/.config/bspwm/picom.conf &'
alias postg='sudo -u postgres -i'
alias qiv='qiv -w 500'
alias work='clear ;t -w; t -wt'
alias yt='~/.local/bin/ytfzf -t'
alias mutt-wizard="mw"
alias neomutt="mbsync -a && neomutt"
