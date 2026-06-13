function wal --wraps wal --description "Run pywal and reload Hyprland config"
    command wal $argv && hyprctl reload
end
