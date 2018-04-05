export ABSOLUTE_DOCKER_COMPOSE_DIR=''
export MACHINE_NAME=default

eval $(docker-machine env ${MACHINE_NAME})
cd ${ABSOLUTE_DOCKER_COMPOSE_DIR}
echo $(pwd)

case "$1" in
  'exec'|'e'|'E') docker-compose exec $2 bash ;;
  '') echo 'Supported actions: \n exec \n e (exec alias) \n other docker-compose actions:'; docker-compose ;;
  *) docker-compose $1
esac
