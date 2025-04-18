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
alias timeshift='sudo -E timeshift-launcher'
alias aur='cd ~/aur_clone_directory'
#adding shortcuts to mount cloud drives with rclone (rclone already configured)
alias dropbox='rclone mount dropbox: ~/Dropbox/ --daemon'
#-------adding enviroment variables
#note this location is sym linked
export SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt
export EDITOR=vim
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"


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

#Can change format of fzf configurations
#set fzf_git_log_format "%H %s"

# Adding LaTeX directory to path
if test -d /usr/local/texlive/2025/bin/x86_64-linux
    if not contains -- /usr/local/texlive/2025/bin/x86_64-linux $PATH
        set -p PATH /usr/local/texlive/2025/bin/x86_64-linux 
    end
end

