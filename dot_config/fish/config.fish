fish_add_path --prepend "$HOME/.local/bin" "$HOME/.cargo/bin"
set -gx EDITOR micro
set -gx VISUAL $EDITOR

if status is-interactive
    if type -q fzf
        fzf --fish | source
    end
    if type -q zoxide
        zoxide init fish | source
    end
    if type -q starship
        starship init fish | source
    end

    if type -q eza
        alias ls 'eza --icons=auto --group-directories-first'
        alias ll 'eza -lah --icons=auto --group-directories-first --git'
    end

    function fish_greeting
        type -q fastfetch; and fastfetch
    end
end
