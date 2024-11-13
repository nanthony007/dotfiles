function trash --wraps="mv $argv ~/.Trash" --description "trash instead of rm"
    mv $argv ~/.Trash
end
