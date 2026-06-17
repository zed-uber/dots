function gp
    if test (count $argv) -eq 0
        echo "Error: Commit message is required."
        echo "Usage: gpush 'your commit message'"
        return 1
    end

    git add .
    git commit -m "$argv"
    git push
end
