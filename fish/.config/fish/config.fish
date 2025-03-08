source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
# function fish_greeting
#    # smth smth
#end

#adding my own custome variables outside cachyos
alias dot='cd ~/my_dot_files' #navigates to my git dotfiles repo
alias github='ssh-add ~/.ssh/github-key' #automates the authentication of githup SSH key

#adding enviroment variables
#note this location is sym linked
export SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt

#adding wrapper for yazi to change directory when browsing
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
