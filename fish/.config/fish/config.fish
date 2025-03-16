source /usr/share/cachyos-fish-config/cachyos-config.fish
fish_config theme choose "Dracula Official"

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
	#	pokeget gengar --hide-name | fastfetch --file-raw -
	fortune | cowsay | fastfetch --file-raw -
end

#adding my own custome variables outside cachyos
alias dot='cd ~/my_dot_files' #navigates to my git dotfiles repo
alias github='ssh-add ~/.ssh/github-key' #automates the authentication of githup SSH key
alias gb='systemctl suspend'
alias gs='git status'
alias ga='git add '
alias gc='git commit -m '


#-------adding enviroment variables
#note this location is sym linked
export SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt
export EDITOR=vim


#adding wrapper for yazi to change directory when browsing
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

#adding starship init
starship init fish | source

#adding fzf key bindings and fuzzy completion
fzf --fish | source


