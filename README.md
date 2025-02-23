# syos-maximus configuration files

## Note that that the file structure of these files are setup for gnu stow

To push files to correct directory run the following:
'stow *package-name*'


## Fish Functions

Fish functions and config.d file under fish config were taken from this github: <https://github.com/danhper/fish-ssh-agent.git>

The purpose of these funtions are to initilize ssh-agent in a fish shell. The config.d file checks to see if a ssh-agent was already started. This way opening up multiple shells won't open up multiple agents
