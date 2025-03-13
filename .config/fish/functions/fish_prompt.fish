function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color purple
    printf ' %s' (prompt_pwd)
    set_color normal

    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf " (%s)" (set_color normal)(basename $VIRTUAL_ENV)(set_color normal)
    end
    printf ' ↪ '
    set_color normal
    echo
end

function fish_postexec --on-event fish_postexec
    if test "$argv[1]" != "clear"
        echo
    end
end
