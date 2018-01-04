alias d='docker $*'
alias d-c='docker-compose $*'
alias dvc='docker volume ls -qf dangling=true | xargs -r docker volume rm'
alias dn='docker system prune -a'
