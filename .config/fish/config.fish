# Theme
fish_config theme choose "catppuccin-mocha"

# Greeting
set -g fish_greeting ""

# Nvim as default editor
set -gx EDITOR nvim

if status is-interactive

    # Starship prompt
    starship init fish | source

    # FZF default bindings
    fzf --fish | source

    # Zoxide
    zoxide init fish | source

end
