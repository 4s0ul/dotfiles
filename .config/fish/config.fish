if status is-interactive
    set -U fish_greeting ""
    starship init fish | source
    set -gx EDITOR nvim
    fzf_key_bindings
end
