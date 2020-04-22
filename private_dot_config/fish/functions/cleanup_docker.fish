function cleanup_docker --description 'Cleanup Docker containers / images'
    docker ps -a | tail -n +2 | awk '{print $1}' | xargs docker rm
    docker image prune -f >/dev/null 2>&1
end