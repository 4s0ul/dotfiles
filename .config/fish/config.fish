# Theme
fish_config theme choose "catppuccin-mocha"

# Greeting
set -g fish_greeting ""

# Nvim integration
set -gx EDITOR nvim

# Eza integration
alias l="eza --icons=auto"
alias ll="eza --long --icons=auto --group-directories-first"
alias la="eza --long --icons=auto --all --group-directories-first"

if status is-interactive

    # Starship integration
    starship init fish | source

    # FZF integration
    fzf --fish | source

    # Zoxide integration
    zoxide init fish | source

end
