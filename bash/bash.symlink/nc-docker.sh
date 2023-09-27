_nc_docker_completion() {
    COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
                COMP_CWORD=$COMP_CWORD \
                _NC_DOCKER_COMPLETE=complete nc-docker ) )
    return 0
}
complete -o default -F _nc_docker_completion nc-docker

alias ncd="nc-docker"
complete -o default -F _nc_docker_completion ncd
