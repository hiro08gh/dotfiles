#!bin/bash

# Global vars.
HOME=${HOME}
EXEC_PATH=${PWD}

dotfiles=(".zshrc")

for dotfile in "${dotfiles[@]}"
do
    ln -sf "${EXEC_PATH}/${dotfile}" "${HOME}/${dotfile}"
    echo "Create symlink ${HOME}/${dotfile}"
done

echo '===== Re login ====='
exec $SHELL -l
