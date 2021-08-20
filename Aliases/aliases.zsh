

alias v="/usr/bin/nvim"
alias joplin='joplin && joplin sync'
alias MyDay='clear ; \
    echo "RECURRING DAILY TASKS" ; \
    task Daily ; echo "WORK RELATED TASKS" ; \
    task Work ; echo "NON RECURRING PERSONAL TASKS" ;\
    task Personal ; echo "CODING TASKS"; '
alias notes='cd ~/Notes'
alias tracker='tracker.sh'
alias config='cd ~/.config/'
alias dvorak='setxkbmap dvorak'
alias us='setxkbmap us'
alias no='setxkbmap no'
alias gp='~/Bin/gp.sh'
alias swap-caps='setxkbmap -option caps:swapescape'
alias doom='.emacs.d/bin/doom'
alias typing='python ~/Documents/Coding/Python/Typing_Game/main.py'
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
