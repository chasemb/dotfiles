# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme agnoster

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins git brew node autojump sublime

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Fish options
set fish_greeting ""
set -g theme_display_user yes

#Set Path
set -x fish_user_paths /usr/local/bin /usr/local/sbin $PATH

# OSX Brew coreutils
if test -d (brew --prefix coreutils ^/dev/null)/libexec/gnubin
    set -x fish_user_paths (brew --prefix coreutils ^/dev/null)/libexec/gnubin $fish_user_paths
end