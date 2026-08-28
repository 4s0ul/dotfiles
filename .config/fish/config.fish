# Theme
fish_config theme choose "catppuccin-mocha"

# Greeting
set -g fish_greeting ""

# Neovim
set -gx EDITOR nvim

if status is-interactive
    # Starship
    starship init fish | source

    # FZF
    fzf --fish | source

    # Zoxide
    zoxide init fish | source

    # Eza
    alias l="eza --icons=auto"
    alias ll="eza --long --icons=auto --group-directories-first"
    alias la="eza --long --icons=auto --all --group-directories-first"

end
