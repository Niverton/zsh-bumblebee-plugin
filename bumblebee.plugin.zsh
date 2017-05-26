# bumblebee run plugin

bumblebee-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == optirun\ * ]]; then
        LBUFFER="${LBUFFER#optirun }"
    else
        LBUFFER="optirun $LBUFFER"
    fi
}

zle -N bumblebee-command-line
bindkey "^z" bumblebee-command-line
