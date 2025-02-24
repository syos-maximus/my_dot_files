source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

#adding my own custome variables outside cachyos
alias dot='cd ~/my_dot_files' #navigates to my git dotfiles repo

#adding enviroment variables
#note this location is sym linked
export SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt
