# freshshell.com
#
# Examples:
#
#     fresh twe4ked/dotfiles shell/functions.sh
#     fresh jasoncodes/dotfiles aliases/rails.sh
#     fresh jasoncodes/dotfiles config/tmux.conf --file
#
# See http://freshshell.com/readme for documentation.

if [[ "$(uname)" == "Darwin" ]]; then
    git_credential_helper=osxkeychain
else
    git_credential_helper=cache
fi

fresh freshshell/fresh bin/fresh --bin

# Config
fresh-options --file
    fresh config/\*
fresh-options

# git
fresh git/gitconfig --file --filter="sed 's+git_credential_helper+${git_credential_helper}+g'"
fresh git/gitignore --file

# oh-my-fish
fresh chrisblossom/oh-my-fish . --file=~/.oh-my-fish/

# config.fish
fresh-options --file=~/.config/fish/config.fish --marker --ignore-missing
    # fresh
    # fresh freshshell/fresh contrib/source-build.sh
    # config
    fresh shell/fish/config.fish
    # other
    #fresh shell/aliases
fresh-options

# altercation/solarized
fresh altercation/solarized . --file=~/.solarized/

# Lokaltog/powerline-fonts
fresh Lokaltog/powerline-fonts . --file=~/.powerline-fonts/
